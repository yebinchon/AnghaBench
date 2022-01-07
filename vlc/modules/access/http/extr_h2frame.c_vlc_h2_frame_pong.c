
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vlc_h2_frame {int dummy; } ;


 int VLC_H2_FRAME_PING ;
 int VLC_H2_PING_ACK ;
 scalar_t__ likely (int ) ;
 int memcpy (int ,int *,int) ;
 struct vlc_h2_frame* vlc_h2_frame_alloc (int ,int ,int ,int) ;
 int vlc_h2_frame_payload (struct vlc_h2_frame*) ;

struct vlc_h2_frame *vlc_h2_frame_pong(uint64_t opaque)
{
    struct vlc_h2_frame *f = vlc_h2_frame_alloc(VLC_H2_FRAME_PING,
                                                VLC_H2_PING_ACK, 0, 8);
    if (likely(f != ((void*)0)))
        memcpy(vlc_h2_frame_payload(f), &opaque, 8);
    return f;
}
