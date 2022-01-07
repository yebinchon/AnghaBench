
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_h2_parser_cbs {int dummy; } ;
struct TYPE_2__ {int * decoder; scalar_t__ len; int * buf; scalar_t__ sid; } ;
struct vlc_h2_parser {int rcwd_size; TYPE_1__ headers; int parser; struct vlc_h2_parser_cbs const* cbs; void* opaque; } ;


 int VLC_H2_MAX_HEADER_TABLE ;
 int free (struct vlc_h2_parser*) ;
 int * hpack_decode_init (int ) ;
 struct vlc_h2_parser* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_h2_parse_preface ;

struct vlc_h2_parser *vlc_h2_parse_init(void *ctx,
                                        const struct vlc_h2_parser_cbs *cbs)
{
    struct vlc_h2_parser *p = malloc(sizeof (*p));
    if (unlikely(p == ((void*)0)))
        return ((void*)0);

    p->opaque = ctx;
    p->cbs = cbs;
    p->parser = vlc_h2_parse_preface;
    p->headers.sid = 0;
    p->headers.buf = ((void*)0);
    p->headers.len = 0;
    p->headers.decoder = hpack_decode_init(VLC_H2_MAX_HEADER_TABLE);
    if (unlikely(p->headers.decoder == ((void*)0)))
    {
        free(p);
        return ((void*)0);
    }
    p->rcwd_size = 65535;
    return p;
}
