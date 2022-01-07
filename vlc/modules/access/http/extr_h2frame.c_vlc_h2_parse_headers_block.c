
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_fast32_t ;
struct TYPE_2__ {scalar_t__ sid; } ;
struct vlc_h2_parser {TYPE_1__ headers; } ;
struct vlc_h2_frame {int dummy; } ;


 scalar_t__ VLC_H2_FRAME_CONTINUATION ;
 int VLC_H2_PROTOCOL_ERROR ;
 int assert (int) ;
 int free (struct vlc_h2_frame*) ;
 scalar_t__ vlc_h2_frame_type (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;
 int vlc_h2_parse_frame_continuation (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int ) ;

__attribute__((used)) static int vlc_h2_parse_headers_block(struct vlc_h2_parser *p,
                                      struct vlc_h2_frame *f, size_t len,
                                      uint_fast32_t id)
{
    assert(p->headers.sid != 0);



    if (vlc_h2_frame_type(f) != VLC_H2_FRAME_CONTINUATION)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
    }

    return vlc_h2_parse_frame_continuation(p, f, len, id);
}
