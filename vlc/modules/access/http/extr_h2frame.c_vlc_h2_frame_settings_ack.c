
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 int VLC_H2_FRAME_SETTINGS ;
 int VLC_H2_SETTINGS_ACK ;
 struct vlc_h2_frame* vlc_h2_frame_alloc (int ,int ,int ,int ) ;

struct vlc_h2_frame *vlc_h2_frame_settings_ack(void)
{
    return vlc_h2_frame_alloc(VLC_H2_FRAME_SETTINGS, VLC_H2_SETTINGS_ACK, 0,
                              0);
}
