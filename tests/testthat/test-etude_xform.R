test_that("etude works", {

  expect_warning(
    x <- knitr::knit(test_path("etude_test.Rmd"), output = tempfile())
  )
  expect_true(file.exists(x))
  expect_type(x, "character")

})
