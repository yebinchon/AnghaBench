
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {char const*** headers; } ;
typedef size_t ssize_t ;


 int ENOENT ;
 int errno ;
 size_t vlc_http_msg_find_header (struct vlc_http_msg const*,char const*) ;

const char *vlc_http_msg_get_header(const struct vlc_http_msg *m,
                                    const char *name)
{
    ssize_t idx = vlc_http_msg_find_header(m, name);
    if (idx < 0)
    {
        errno = ENOENT;
        return ((void*)0);
    }
    return m->headers[idx][1];
}
