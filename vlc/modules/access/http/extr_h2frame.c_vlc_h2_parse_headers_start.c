
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint_fast32_t ;
struct TYPE_2__ {scalar_t__ sid; int eos; scalar_t__ len; } ;
struct vlc_h2_parser {TYPE_1__ headers; int parser; } ;


 int assert (int) ;
 int vlc_h2_parse_headers_block ;

__attribute__((used)) static void vlc_h2_parse_headers_start(struct vlc_h2_parser *p,
                                       uint_fast32_t sid, bool eos)
{
    assert(sid != 0);
    assert(p->headers.sid == 0);

    p->parser = vlc_h2_parse_headers_block;
    p->headers.sid = sid;
    p->headers.eos = eos;
    p->headers.len = 0;
}
