class BooksScreen extends Screen
  anchor: -> $("navigationBar[name=Authors]")

  constructor: ->
    super 'books'

    extend @actions,
    'Scroll to "([^"]*)"$': (elementName) ->
      view.tableViews()[0].scrollToElementWithName(elementName)

    'Delete a row "([^"]*)"$': (rowName) ->
      target.pushTimeout(0.5)
      row = view.tableViews()[0].cells()[rowName]
      row.buttons()[0].tap()
      row.buttons()[1].tap()
      target.popTimeout()
