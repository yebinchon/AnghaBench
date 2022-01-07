
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_tls {int dummy; } ;
struct vlc_http_stream {int * cbs; } ;
struct vlc_chunked_stream {int eof; int error; struct vlc_http_stream stream; scalar_t__ chunk_length; struct vlc_tls* tls; struct vlc_http_stream* parent; } ;


 struct vlc_chunked_stream* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_chunked_callbacks ;

struct vlc_http_stream *vlc_chunked_open(struct vlc_http_stream *parent,
                                         struct vlc_tls *tls)
{
    struct vlc_chunked_stream *s = malloc(sizeof (*s));
    if (unlikely(s == ((void*)0)))
        return ((void*)0);

    s->stream.cbs = &vlc_chunked_callbacks;
    s->parent = parent;
    s->tls = tls;
    s->chunk_length = 0;
    s->eof = 0;
    s->error = 0;
    return &s->stream;
}
