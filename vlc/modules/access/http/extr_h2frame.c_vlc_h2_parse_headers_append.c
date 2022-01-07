
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ sid; size_t len; int * buf; } ;
struct vlc_h2_parser {TYPE_1__ headers; } ;


 int VLC_H2_INTERNAL_ERROR ;
 int assert (int) ;
 int memcpy (int *,int const*,size_t) ;
 int * realloc (int *,size_t) ;
 scalar_t__ unlikely (int ) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;

__attribute__((used)) static int vlc_h2_parse_headers_append(struct vlc_h2_parser *p,
                                       const uint8_t *data, size_t len)
{
    assert(p->headers.sid != 0);

    if (p->headers.len + len > 65536)
        return vlc_h2_parse_error(p, VLC_H2_INTERNAL_ERROR);

    uint8_t *buf = realloc(p->headers.buf, p->headers.len + len);
    if (unlikely(buf == ((void*)0)))
        return vlc_h2_parse_error(p, VLC_H2_INTERNAL_ERROR);

    p->headers.buf = buf;
    memcpy(p->headers.buf + p->headers.len, data, len);
    p->headers.len += len;
    return 0;
}
