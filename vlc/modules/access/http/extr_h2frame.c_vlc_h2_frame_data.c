
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef int uint8_t ;
struct vlc_h2_frame {int dummy; } ;


 int VLC_H2_DATA_END_STREAM ;
 int VLC_H2_FRAME_DATA ;
 scalar_t__ likely (int ) ;
 int memcpy (int ,void const*,size_t) ;
 struct vlc_h2_frame* vlc_h2_frame_alloc (int ,int ,int ,size_t) ;
 int vlc_h2_frame_payload (struct vlc_h2_frame*) ;

struct vlc_h2_frame *
vlc_h2_frame_data(uint_fast32_t stream_id, const void *buf, size_t len,
                  bool eos)
{
    struct vlc_h2_frame *f;
    uint8_t flags = eos ? VLC_H2_DATA_END_STREAM : 0;

    f = vlc_h2_frame_alloc(VLC_H2_FRAME_DATA, flags, stream_id, len);
    if (likely(f != ((void*)0)))
        memcpy(vlc_h2_frame_payload(f), buf, len);
    return f;
}
