
<!-- README.md is generated from README.Rmd. Please edit that file -->

# artyfarty

<div id="badges">

[![Travis
(.org)](https://img.shields.io/travis/tadaadata/artyfarty.svg?logo=travis)](https://travis-ci.org/tadaadata/artyfarty)
[![Coverage
status](https://codecov.io/gh/tadaadata/artyfarty/branch/master/graph/badge.svg)](https://codecov.io/github/tadaadata/artyfarty?branch=master)  
<!--[![GitHub release](https://img.shields.io/github/release/tadaadata/artyfarty.svg?logo=GitHub)](https://github.com/tadaadata/artyfarty/releases) -->
[![GitHub last commit
(master)](https://img.shields.io/github/last-commit/tadaadata/artyfarty/master.svg?logo=GithUb)](https://github.com/tadaadata/artyfarty/commits/master)

</div>

## Fork notice

The original package has not been in active development for \>= 2 years,
and since then, some things have changes. This fork aims to bring the
themes up to speed with regard to missing features, like setting
fonts/colors for the `subtitle` ggplot2 elements missing in the original
package.

## Installation

You can install the development version of artyfarty from with:

``` r
remotes::install_github("tadaadata/artyfarty")
```

## Examples

``` r
library(ggplot2)
library(artyfarty)

# List exported themes
exports <- getNamespaceExports("artyfarty")
themes <- exports[grepl(pattern = "^theme_", exports)]

p <- ggplot(data = mtcars, aes(x = hp, y = mpg, color = cyl)) +
  geom_point() +
  labs(subtitle = "Plot subtitle",
       caption = "Caption",
       x = "X axis text", y = "Y axis text")

for (theme in sort(themes)) {
  p <- p + labs(title = theme) + eval(parse(text = theme))()
  print(p)
}
```

<img src="man/figures/README-theme_preview-1.png" width="100%" /><img src="man/figures/README-theme_preview-2.png" width="100%" /><img src="man/figures/README-theme_preview-3.png" width="100%" /><img src="man/figures/README-theme_preview-4.png" width="100%" /><img src="man/figures/README-theme_preview-5.png" width="100%" /><img src="man/figures/README-theme_preview-6.png" width="100%" /><img src="man/figures/README-theme_preview-7.png" width="100%" /><img src="man/figures/README-theme_preview-8.png" width="100%" /><img src="man/figures/README-theme_preview-9.png" width="100%" /><img src="man/figures/README-theme_preview-10.png" width="100%" /><img src="man/figures/README-theme_preview-11.png" width="100%" /><img src="man/figures/README-theme_preview-12.png" width="100%" />

## Code of Conduct

Please note that the \[34m’artyfarty’\[39m project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.

## Original README

`artyfarty` is a collection of ggplot themes published by
[dataroots](http://dataroots.io).

For more info, please check out the examples and documentation
[here](https://datarootsio.github.io/artyfarty).

An introductory vignette can be found
[here](https://datarootsio.github.io/artyfarty/articles/introduction.html)
