
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_fast32_t ;
typedef int uint8_t ;
struct vlc_h2_parser {int dummy; } ;
struct vlc_h2_frame {int dummy; } ;


 int VLC_H2_FRAME_SIZE_ERROR ;
 size_t VLC_H2_MAX_FRAME ;
 int VLC_H2_PROTOCOL_ERROR ;
 int VLC_H2_PUSH_PROMISE_PADDED ;
 int free (struct vlc_h2_frame*) ;
 int vlc_h2_frame_flags (struct vlc_h2_frame*) ;
 int* vlc_h2_frame_payload (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;

__attribute__((used)) static int vlc_h2_parse_frame_push_promise(struct vlc_h2_parser *p,
                                           struct vlc_h2_frame *f, size_t len,
                                           uint_fast32_t id)
{
    uint8_t flags = vlc_h2_frame_flags(f);
    const uint8_t *ptr = vlc_h2_frame_payload(f);

    if (id == 0)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len > VLC_H2_MAX_FRAME)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    if (flags & VLC_H2_PUSH_PROMISE_PADDED)
    {
        if (len < 1 || len < (1u + ptr[0]))
        {
            free(f);
            return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);
        }
        len -= 1 + ptr[0];
        ptr++;
    }


    free(f);
    return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
}
