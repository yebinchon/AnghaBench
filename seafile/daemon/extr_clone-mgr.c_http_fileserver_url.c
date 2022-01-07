
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_free (char*) ;
 char* g_strconcat (char const*,char*,int *) ;
 char* g_strdup (char const*) ;
 char* g_strndup (char const*,int) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static char *
http_fileserver_url (const char *url)
{
    const char *host;
    char *colon;
    char *url_no_port;
    char *ret = ((void*)0);


    if (strlen(url) <= strlen("http://"))
        return g_strdup(url);


    host = url + strlen("http://");

    colon = strrchr (host, ':');
    if (colon) {
        url_no_port = g_strndup(url, colon - url);
        ret = g_strconcat(url_no_port, ":8082", ((void*)0));
        g_free (url_no_port);
    } else {
        ret = g_strconcat(url, ":8082", ((void*)0));
    }

    return ret;
}
