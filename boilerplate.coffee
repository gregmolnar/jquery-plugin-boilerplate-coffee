###
Licence goes here
###
$ = jQuery

#settings for the plugin
settings = {
	
}

methods = 
	###
	initializes the plugin
	###
	init: (options) ->
		if options
	        $.extend settings, options
	###
	helper method to use the console.log if available
	###			 
	log: (message) ->
		try
			console.log message
		catch e

$.fn.plugin_name = ( method ) ->	
	if methods[method]
		methods[method].apply( this, Array.prototype.slice.call( arguments, 1 ))
	else if typeof method == 'object' || ! method
		methods.init.apply( this, arguments )
	else
		$.error( 'Method ' +  method + ' does not exist on jQuery.plugin_name' )