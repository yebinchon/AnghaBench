
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct vlc_h2_parser* buf; int decoder; } ;
struct vlc_h2_parser {TYPE_1__ headers; } ;


 int free (struct vlc_h2_parser*) ;
 int hpack_decode_destroy (int ) ;

void vlc_h2_parse_destroy(struct vlc_h2_parser *p)
{
    hpack_decode_destroy(p->headers.decoder);
    free(p->headers.buf);
    free(p);
}
