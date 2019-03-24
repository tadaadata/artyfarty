# artyfarty 0.0.1

This is now a fork of [datarootsio/artyfarty](https://github.com/datarootsio/artyfarty), the Tadaa, Data! way.

- Remove superfluous themes:
    - `theme_five38` -> use `ggthemes::theme_fivethirtyeight()`
    - `theme_economist` -> use `ggthemes::theme_economist()`
- Plot all current themes in `README.Rmd`.
- Move `pkgdown` to `gh-pages` branch and auto-deploy via travis-ci.
- `usethis::use_`
    - `tidy_description()`
    - `readme_rmd()`
    - `news_md()`
    - `tidy_style(strict = TRUE)`
    - `code_of_conduct()`
    - `pipe()`
    - `coverage()`
- Change up `.travis.yml` for more R versions and added binary packages.
- Added a `NEWS.md` file to track changes to the package.
