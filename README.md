This repository offers .Rprofile to customize the prompt in your Rstudio.

The .Rprofile files are adapted from https://lapsedgeographer.london/2020-11/custom-r-prompt/ and https://gist.github.com/jthomasmock/22e851343f31203170547144ff35e8e1.

To successfully change the prompt in your Rstudio, you need to first install 'usethis' and 'emoji' packages locally on your machine.

The 'emoji' package can be found from either on CRAN or https://github.com/EmilHvitfeldt/emoji.

Then, you need to run

> usethis::edit_r_profile()

in your R console. And copy and paste the .Rprofile you want in your .Rprofile.

Last but not the least, save your .Rprofile and then restart R. And right from the get-go you’ll have a prompt that tells you the time (well technically the last 
time R completed anything, if R hasn’t done anything for a while it won’t update until you execute some code).
