$(document).ready(function() {
  $("input.text").prop("checked", true)

  var displaySearchOption = function (searchOption) {
    $('.js-search-option').hide();
    $('.js-search-option.' + searchOption + "-search").show()
  };

  $('input').change(function () {
    displaySearchOption($("input:checked").val())
  });
});
