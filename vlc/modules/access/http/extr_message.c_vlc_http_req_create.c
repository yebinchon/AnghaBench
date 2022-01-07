
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int status; int * path; int * authority; int * scheme; int * method; int * payload; int * headers; scalar_t__ count; } ;


 int assert (int ) ;
 struct vlc_http_msg* malloc (int) ;
 int * strdup (char const*) ;
 scalar_t__ unlikely (int) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;

struct vlc_http_msg *
vlc_http_req_create(const char *method, const char *scheme,
                    const char *authority, const char *path)
{
    struct vlc_http_msg *m = malloc(sizeof (*m));
    if (unlikely(m == ((void*)0)))
        return ((void*)0);

    assert(method != ((void*)0));
    m->status = -1;
    m->method = strdup(method);
    m->scheme = (scheme != ((void*)0)) ? strdup(scheme) : ((void*)0);
    m->authority = (authority != ((void*)0)) ? strdup(authority) : ((void*)0);
    m->path = (path != ((void*)0)) ? strdup(path) : ((void*)0);
    m->count = 0;
    m->headers = ((void*)0);
    m->payload = ((void*)0);

    if (unlikely(m->method == ((void*)0)
              || (scheme != ((void*)0) && m->scheme == ((void*)0))
              || (authority != ((void*)0) && m->authority == ((void*)0))
              || (path != ((void*)0) && m->path == ((void*)0))))
    {
        vlc_http_msg_destroy(m);
        m = ((void*)0);
    }
    return m;
}
