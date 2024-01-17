.First <- function(){
  
  # adapted from: https://lapsedgeographer.london/2020-11/custom-r-prompt/
  my_prompt <- function(...) {
    
    git_branch <- suppressWarnings(system("git rev-parse --abbrev-ref HEAD",
                                          ignore.stderr = TRUE, intern = TRUE))
    
    if (length(git_branch) != 0) {
      git_msg <- paste0(" @", git_branch)
    } else {
      git_msg <- ""
    }
    
    proj_path <- here::here()
    my_loc <- getwd()
    
    if (!is.null(proj_path)) {
      
      if (grepl(proj_path, my_loc)) {
        
        my_base <- basename(proj_path)
        
        my_loc <- paste0(my_base, gsub(proj_path,  "", my_loc),
                         collapse = .Platform$file.sep)
        
      } else {
        
        home <- Sys.getenv("HOME")
        
        my_loc <- paste0("!! ", gsub(home, "~", my_loc))
      }
    }
    
    console_msg <- glue::glue(
      "[{format(Sys.time(), '%H:%M')} {emoji::emoji('computer')}", "{my_loc}",
      "{git_msg}]> "
    )
    
    options(prompt = console_msg)
    
    invisible(TRUE)
    
  }
  
  
  my_prompt()
  
  addTaskCallback(my_prompt)
  
}
