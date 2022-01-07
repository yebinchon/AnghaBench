
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_http_cookie_jar_t ;
struct vlc_http_msg {char* authority; int * path; int * scheme; } ;


 int EINVAL ;
 int errno ;
 int free (char*) ;
 int strcasecmp (int *,char*) ;
 int strcspn (char*,char*) ;
 char* strndup (char*,int ) ;
 scalar_t__ unlikely (int ) ;
 char* vlc_http_cookies_fetch (int *,int,char*,int *) ;
 int vlc_http_msg_add_header (struct vlc_http_msg*,char*,char*,char*) ;

int vlc_http_msg_add_cookies(struct vlc_http_msg *m,
                             vlc_http_cookie_jar_t *jar)
{
    char *host, *cookies;
    int val = 0;
    bool secure;

    if (m->scheme == ((void*)0) || m->authority == ((void*)0) || m->path == ((void*)0))
    {
        errno = EINVAL;
        return -1;
    }

    if (!strcasecmp(m->scheme, "https"))
        secure = 1;
    else if (!strcasecmp(m->scheme, "http"))
        secure = 0;
    else
        return 0;

    if (jar == ((void*)0))
        return 0;

    if (m->authority[0] == '[')
        host = strndup(m->authority + 1, strcspn(m->authority + 1, "]"));
    else
        host = strndup(m->authority, strcspn(m->authority, ":"));
    if (unlikely(host == ((void*)0)))
        return -1;

    cookies = vlc_http_cookies_fetch(jar, secure, host, m->path);
    free(host);

    if (cookies != ((void*)0))
    {
        val = vlc_http_msg_add_header(m, "Cookie", "%s", cookies);
        free(cookies);
    }
    return val;
}
