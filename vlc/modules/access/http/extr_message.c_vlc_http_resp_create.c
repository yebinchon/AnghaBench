
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {unsigned int status; int * payload; int * headers; scalar_t__ count; int * path; int * authority; int * scheme; int * method; } ;


 int assert (int) ;
 struct vlc_http_msg* malloc (int) ;
 scalar_t__ unlikely (int ) ;

struct vlc_http_msg *vlc_http_resp_create(unsigned status)
{
    struct vlc_http_msg *m = malloc(sizeof (*m));
    if (unlikely(m == ((void*)0)))
        return ((void*)0);

    assert(status < 1000);
    m->status = status;
    m->method = ((void*)0);
    m->scheme = ((void*)0);
    m->authority = ((void*)0);
    m->path = ((void*)0);
    m->count = 0;
    m->headers = ((void*)0);
    m->payload = ((void*)0);
    return m;
}
