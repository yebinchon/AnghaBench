
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {size_t length; char* ptr; } ;
struct vlc_http_msg {unsigned int count; scalar_t__** headers; int status; scalar_t__ authority; scalar_t__ path; scalar_t__ scheme; int method; } ;


 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 int vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,scalar_t__,...) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;

char *vlc_http_msg_format(const struct vlc_http_msg *m, size_t *restrict lenp,
                          bool proxied)
{
    struct vlc_memstream stream;

    vlc_memstream_open(&stream);

    if (m->status < 0)
    {
        vlc_memstream_printf(&stream, "%s ", m->method);
        if (proxied)
            vlc_memstream_printf(&stream, "%s://%s", m->scheme, m->authority);
        vlc_memstream_printf(&stream, "%s HTTP/1.1\r\nHost: %s\r\n",
                             m->path ? m->path : m->authority, m->authority);
    }
    else
        vlc_memstream_printf(&stream, "HTTP/1.1 %03hd .\r\n", m->status);

    for (unsigned i = 0; i < m->count; i++)
        vlc_memstream_printf(&stream, "%s: %s\r\n",
                             m->headers[i][0], m->headers[i][1]);

    vlc_memstream_puts(&stream, "\r\n");

    if (vlc_memstream_close(&stream))
        return ((void*)0);

    if (lenp != ((void*)0))
        *lenp = stream.length;
    return stream.ptr;
}
