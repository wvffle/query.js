 do ->
  ###*
  # @func waff#patch
  # @desc Performs XHR PATCH
  # @param {String} url - URL to patch
  # @param {Object} data={} - PATCH data
  # @param {Object} options - Options object
  # @param {Boolean} options.json=false - Determines if response is json
  # @param {Boolean} options.form=true - Determines if data should be converted to FormData or just pure json
  # @param {Boolean} options.timeout=2000 - Determines timeout in ms
  # @example
  # waff.patch('http://httpbin.org/patch', { waffle_id: 666 })
  #   .then(function(res){
  #
  #   })
  #   .catch(function(err){
  #
  #   })
  # @returns {waff#Promise} Returns promise of request
  ###
  patch = (url, data = {}, options = {}) ->
    options.method = 'patch'
    waff._post url, data, options
  patch