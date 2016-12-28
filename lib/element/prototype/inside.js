/**
 * Checks `elem` is a parent of element
 *
 * @param {Element} elem - element to check
 *
 * @example
 * var header = waff.element('header');
 * header.inside()
 */
Element.prototype.inside = function(element) {
  if (this.parent === element) {
    return true;
  }
  var current = this;
  while (current = current.parentElement) {
    if (current == parent) {
      return true;
    }
  }
};
