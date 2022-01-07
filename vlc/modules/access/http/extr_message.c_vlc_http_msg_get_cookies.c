
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_http_cookie_jar_t ;
struct vlc_http_msg {unsigned int count; int ** headers; } ;


 int strcasecmp (int ,char*) ;
 int vlc_http_cookies_store (int *,int ,char const*,char const*) ;

void vlc_http_msg_get_cookies(const struct vlc_http_msg *m,
                              vlc_http_cookie_jar_t *jar,
                              const char *host, const char *path)
{
    if (jar == ((void*)0))
        return;

    for (unsigned i = 0; i < m->count; i++)
        if (!strcasecmp(m->headers[i][0], "Set-Cookie"))
            vlc_http_cookies_store(jar, m->headers[i][1], host, path);
}
