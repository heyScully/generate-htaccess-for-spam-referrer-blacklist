# generate-htaccess-for-spam-referrer-blacklist
Written in R, this script will pull from Piwik's live [[referrer-spam-blacklist][https://github.com/piwik/referrer-spam-blacklist]], and output lines that can be pasted into an .htaccess file to return 301:Forbidden errors for spam referrer domain traffic.  It should help you keep your analytics logs much cleaner.
