library(teal)
library(teal.data)

# Initialize the app with datasets
app <- teal::init(
  data = teal.data::teal_data(
    iris = iris,
    mtcars = mtcars
  ),
  modules = teal::example_module(
    label = "Example Module!"
  ),
  filter = teal_slices(
    teal_slice(dataname = "iris", varname = "Species", selected = "setosa",fixed = TRUE),
    teal_slice(dataname = "iris", varname = "Sepal.Length",anchored = TRUE)
  ),
  header = "My first teal cup",
  footer = "This is a test."
)

# Launch the app
if (interactive()) {
  shiny::runApp(app)
}


