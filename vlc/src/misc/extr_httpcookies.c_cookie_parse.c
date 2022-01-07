
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* psz_name; int b_host_only; int b_secure; int * psz_path; int * psz_domain; int * psz_value; } ;
typedef TYPE_1__ http_cookie_t ;


 int * cookie_default_path (char const*) ;
 int cookie_destroy (TYPE_1__*) ;
 int * cookie_get_domain (char const*) ;
 int * cookie_get_path (char const*) ;
 int cookie_has_attribute (char const*,char*) ;
 TYPE_1__* malloc (int) ;
 char* memchr (char const*,char,size_t) ;
 size_t strcspn (char const*,char*) ;
 int * strdup (char const*) ;
 void* strndup (char const*,size_t) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static http_cookie_t *cookie_parse(const char *value,
                                   const char *host, const char *path)
{
    http_cookie_t *cookie = malloc(sizeof (*cookie));
    if (unlikely(cookie == ((void*)0)))
        return ((void*)0);

    cookie->psz_domain = ((void*)0);
    cookie->psz_path = ((void*)0);


    size_t value_length = strcspn(value, ";");
    const char *p = memchr(value, '=', value_length);

    if (p != ((void*)0))
    {
        cookie->psz_name = strndup(value, p - value);
        p++;
        cookie->psz_value = strndup(p, value_length - (p - value));
        if (unlikely(cookie->psz_value == ((void*)0)))
            goto error;
    }
    else
    {
        cookie->psz_name = strndup(value, value_length);
        cookie->psz_value = ((void*)0);
    }

    if (unlikely(cookie->psz_name == ((void*)0)))
        goto error;


    if (cookie->psz_name[0] == '\0')
        goto error;


    cookie->psz_domain = cookie_get_domain(value);
    if (cookie->psz_domain == ((void*)0))
    {
        cookie->psz_domain = strdup(host);
        if (unlikely(cookie->psz_domain == ((void*)0)))
            goto error;

        cookie->b_host_only = 1;
    }
    else
        cookie->b_host_only = 0;


    cookie->psz_path = cookie_get_path(value);
    if (cookie->psz_path == ((void*)0))
    {
        cookie->psz_path = cookie_default_path(path);
        if (unlikely(cookie->psz_path == ((void*)0)))
            goto error;
    }


    cookie->b_secure = cookie_has_attribute(value, "secure");

    return cookie;

error:
    cookie_destroy(cookie);
    return ((void*)0);
}
