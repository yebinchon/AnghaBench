
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {unsigned int count; int ** headers; } ;
typedef unsigned int ssize_t ;


 int strcasecmp (int ,char const*) ;

__attribute__((used)) static ssize_t vlc_http_msg_find_header(const struct vlc_http_msg *m,
                                        const char *name)
{
    for (unsigned i = 0; i < m->count; i++)
        if (!strcasecmp(m->headers[i][0], name))
            return i;
    return -1;
}
