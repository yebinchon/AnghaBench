
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast8_t ;
typedef unsigned int uint8_t ;
struct vlc_h2_frame {int dummy; } ;


 int VLC_H2_DATA_PADDED ;
 scalar_t__ VLC_H2_FRAME_DATA ;
 int assert (int) ;
 int vlc_h2_frame_flags (struct vlc_h2_frame const*) ;
 size_t vlc_h2_frame_length (struct vlc_h2_frame const*) ;
 unsigned int* vlc_h2_frame_payload (struct vlc_h2_frame const*) ;
 scalar_t__ vlc_h2_frame_type (struct vlc_h2_frame const*) ;

const uint8_t *(vlc_h2_frame_data_get)(const struct vlc_h2_frame *f,
                                       size_t *restrict lenp)
{
    assert(vlc_h2_frame_type(f) == VLC_H2_FRAME_DATA);

    size_t len = vlc_h2_frame_length(f);
    uint_fast8_t flags = vlc_h2_frame_flags(f);
    const uint8_t *ptr = vlc_h2_frame_payload(f);


    if (flags & VLC_H2_DATA_PADDED)
    {
        assert(len >= 1u && len >= 1u + ptr[0]);
        len -= 1u + *(ptr++);
    }

    *lenp = len;
    return ptr;
}
