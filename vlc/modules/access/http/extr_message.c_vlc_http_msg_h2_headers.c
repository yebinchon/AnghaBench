
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {unsigned long status; int * method; int * path; int * authority; int * scheme; } ;


 int strcmp (char const*,char*) ;
 void* strdup (char const*) ;
 unsigned long strtoul (char const*,char**,int) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_http_msg_add_header (struct vlc_http_msg*,char const*,char*,char const*) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_resp_create (int ) ;

struct vlc_http_msg *vlc_http_msg_h2_headers(unsigned n,
                                             const char *const hdrs[][2])
{
    struct vlc_http_msg *m = vlc_http_resp_create(0);
    if (unlikely(m == ((void*)0)))
        return ((void*)0);

    for (unsigned i = 0; i < n; i++)
    {
        const char *name = hdrs[i][0];
        const char *value = hdrs[i][1];


        if (!strcmp(name, ":status"))
        {
            char *end;
            unsigned long status = strtoul(value, &end, 10);

            if (m->status != 0 || status > 999 || *end != '\0')
                goto error;

            m->status = status;
            continue;
        }

        if (!strcmp(name, ":method"))
        {
            if (m->method != ((void*)0))
                goto error;

            m->method = strdup(value);
            if (unlikely(m->method == ((void*)0)))
                goto error;

            m->status = -1;
            continue;
        }

        if (!strcmp(name, ":scheme"))
        {
            if (m->scheme != ((void*)0))
                goto error;

            m->scheme = strdup(value);
            if (unlikely(m->scheme == ((void*)0)))
                goto error;
            continue;
        }

        if (!strcmp(name, ":authority"))
        {
            if (m->authority != ((void*)0))
                goto error;

            m->authority = strdup(value);
            if (unlikely(m->authority == ((void*)0)))
                goto error;
            continue;
        }

        if (!strcmp(name, ":path"))
        {
            if (m->path != ((void*)0))
                goto error;

            m->path = strdup(value);
            if (unlikely(m->path == ((void*)0)))
                goto error;
            continue;
        }

        if (vlc_http_msg_add_header(m, name, "%s", value))
            goto error;
    }

    if ((m->status < 0) == (m->method == ((void*)0)))
    {
error:
        vlc_http_msg_destroy(m);
        m = ((void*)0);
    }
    return m;
}
