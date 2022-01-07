
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef int uint8_t ;
struct vlc_h2_frame {int dummy; } ;


 int SetDWBE (int *,int ) ;
 int VLC_H2_FRAME_GOAWAY ;
 scalar_t__ likely (int ) ;
 struct vlc_h2_frame* vlc_h2_frame_alloc (int ,int ,int ,int) ;
 int * vlc_h2_frame_payload (struct vlc_h2_frame*) ;

struct vlc_h2_frame *
vlc_h2_frame_goaway(uint_fast32_t last_stream_id, uint_fast32_t error_code)
{
    struct vlc_h2_frame *f = vlc_h2_frame_alloc(VLC_H2_FRAME_GOAWAY, 0, 0, 8);
    if (likely(f != ((void*)0)))
    {
        uint8_t *p = vlc_h2_frame_payload(f);

        SetDWBE(p, last_stream_id);
        SetDWBE(p + 4, error_code);
    }
    return f;
}
