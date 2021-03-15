test_that("etude works", {

  # HTML output
  expect_warning(
    x <- rmarkdown::render(test_path("etude_test.Rmd"), output_dir = tempdir())
  )
  expect_true(file.exists(x))
  expect_type(x, "character")
  expect_equal(fs::path_ext(x), "html")

  # PDF output
  expect_warning(
    x <- rmarkdown::render(test_path("etude_test.Rmd"), output_dir = tempdir(), output_format = "pdf_document")
  )

  expect_true(file.exists(x))
  expect_type(x, "character")
  expect_equal(fs::path_ext(x), "pdf")

})
