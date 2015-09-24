
# PULL LATEST SPAM BLACKLIST
spamdomains <- read.table("https://raw.githubusercontent.com/piwik/referrer-spam-blacklist/master/spammers.txt")


# CREATE NEW HTACCESS CODE
htaccess <- ""

for(i in spamdomains[1]){
    htaccess <- paste(htaccess,"RewriteCond %{HTTP_REFERER} ",gsub(".","\\.",i,fixed =TRUE)," [NC,OR]\n", sep="")
}
htaccess[length(htaccess)] <- paste(substr(htaccess[length(htaccess)],1,nchar(htaccess)+2),"]\n", sep="")

# ADD REWRITE RULE LINE
htaccess <- c(htaccess, "RewriteRule .* - [F,L]")

# OUTPUT TO SCREEN FOR COPY/PASTE INTO .htaccess FILE
cat(htaccess)
