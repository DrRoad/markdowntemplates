% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ipynb.r
\name{to_jupyter}
\alias{to_jupyter}
\title{"knit" replacement to generate an ipynb with notedown}
\usage{
to_jupyter(inputFile, encoding)
}
\arguments{
\item{inputFile}{Rmd input filename}

\item{endocoding}{unused}
}
\description{
This function calls the python program \code{notedown} on \code{inputFile}
and returns the converted Rmd filename to the console and tries to open
the converted notebook in a browser after calling \code{jupyter nbconvert}.
}
\details{
Much is assumed (like, you have python installed and setup correctly and
also have \code{notedown} installed and setup correctly).

You specify this as a \code{knit:} replacement in an Rmd YAML header:

\preformatted{---
title: "ggplot2 example"
knit: markdowntemplates::to_jupyter
run: true
---

## Introduction to ggplot2

This is a short demo on how to convert an R Markdown Notebook into an IPython Notebook using knitr and notedown.

Adding a Python Chunk

```\{r engine="python"\}
def f(x):
  return x + 2
f(2)
```

This is an introduction to [ggplot2](http://github.com/hadley/ggplot2). You can view the source as an R Markdown document, if you are using an IDE like RStudio, or as an IPython notebook, thanks to [notedown](https://github.com/aaren/notedown).

We need to first make sure that we have `ggplot2` and its dependencies installed, using the `install.packages` function.

Now that we have it installed, we can get started by loading it into our workspace

```\{r\}
library(ggplot2)
```

We are now fully set to try and create some amazing plots.

#### Data

We will use the ubiqutous [iris](http://stat.ethz.ch/R-manual/R-patched/library/datasets/html/iris.html) dataset.

```\{r\}
head(iris)
```

#### Simple Plot

Let us create a simple scatterplot of `Sepal.Length` with `Petal.Length`.

```\{r\}
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point()
```
}
}
