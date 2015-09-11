# Background script
clickHandler = (info) ->
	# console.log info.selectionText
	chrome.history.deleteUrl {url: info.linkUrl}, () ->
		# console.log "removed url"

contextMenuParams = {
	"title": "Unpurple",
	"contexts": ["link"],
	"onclick" : clickHandler
}

chrome.contextMenus.create contextMenuParams, () ->
	if chrome.runtime.lastError
		console.log "#{chrome.runtime.lastError}"