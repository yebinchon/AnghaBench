
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char const*,char*,char const*,unsigned int) ;
 int free (char*) ;
 scalar_t__ likely (int) ;
 int * strchr (char const*,char) ;
 char* vlc_getProxyUrl (char*) ;

__attribute__((used)) static char *vlc_http_proxy_find(const char *hostname, unsigned port,
                                 bool secure)
{
    const char *fmt;
    char *url, *proxy = ((void*)0);

    if (strchr(hostname, ':') != ((void*)0))
        fmt = port ? "http%s://[%s]:%u" : "http%s://[%s]";
    else
        fmt = port ? "http%s://%s:%u" : "http%s://%s";

    if (likely(asprintf(&url, fmt, secure ? "s" : "", hostname, port) >= 0))
    {
        proxy = vlc_getProxyUrl(url);
        free(url);
    }
    return proxy;
}
