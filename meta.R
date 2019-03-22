# In-development helpers -----
# This commands are frequently used and might as well get a static place.
library(devtools)
library(usethis)
library(artyfarty)

# Pre-release etc. ----
desc::desc_set(Date = as.character(lubridate::today()))
desc::desc_set_version(version = "0.0.1.9000")
usethis::use_tidy_style(strict = TRUE)
usethis::use_tidy_description()
devtools::document(roclets = c("rd", "collate", "namespace", "vignette"))
devtools::build(binary = FALSE); fs::file_delete(fs::dir_ls("..", glob = "*tar.gz"))
devtools::reload()
devtools::test()
devtools::check(cran = FALSE) # Also runs all tests
devtools::check(cran = TRUE) # No tests b/c skip_on_cran
devtools::check(cran = TRUE, remote = TRUE) # Runs additional tests for CRAN
devtools::check_win_release()
devtools::check_rhub()
devtools::build_readme(quiet = TRUE); fs::file_delete("README.html")
devtools::build_vignettes(clean = TRUE)
pkgdown::build_site(run_dont_run = TRUE, preview = TRUE)

# Visual test cases ----
library(ggplot2)

p <- ggplot(data = mtcars, aes(x = hp, y = mpg, color = cyl)) +
  geom_point() +
  labs(title = "Plot title",
       subtitle = "Plot subtitle",
       caption = "Caption",
       x = "X axis text", y = "Y axis text")

p + theme_monokai()
p + theme_monokai_full()
