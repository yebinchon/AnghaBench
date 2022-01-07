
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef int uint8_t ;
struct vlc_h2_frame {int dummy; } ;


 int SetDWBE (int *,int) ;
 int VLC_H2_FRAME_WINDOW_UPDATE ;
 int assert (int) ;
 scalar_t__ likely (int ) ;
 struct vlc_h2_frame* vlc_h2_frame_alloc (int ,int ,int,int) ;
 int * vlc_h2_frame_payload (struct vlc_h2_frame*) ;

struct vlc_h2_frame *
vlc_h2_frame_window_update(uint_fast32_t stream_id, uint_fast32_t credit)
{
    assert((stream_id >> 31) == 0);

    struct vlc_h2_frame *f = vlc_h2_frame_alloc(VLC_H2_FRAME_WINDOW_UPDATE,
                                                0, stream_id, 4);
    if (likely(f != ((void*)0)))
    {
        uint8_t *p = vlc_h2_frame_payload(f);

        SetDWBE(p, credit);
    }
    return f;
}
