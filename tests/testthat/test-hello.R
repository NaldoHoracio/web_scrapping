# test_that("multiplication works", {
#   expect_equal(2 * 2, 4)
# })

test_that("sum", {
  expect_equal(ed_sum(2, 2), 4)
})

test_that("subtraction", {
  expect_equal(ed_diff(2, 2), 0)
})
