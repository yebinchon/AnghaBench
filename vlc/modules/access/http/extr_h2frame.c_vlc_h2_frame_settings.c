
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vlc_h2_frame {int dummy; } ;


 int SetDWBE (int *,scalar_t__) ;
 int SetWBE (int *,int ) ;
 scalar_t__ VLC_H2_DEFAULT_INIT_WINDOW ;
 scalar_t__ VLC_H2_DEFAULT_MAX_FRAME ;
 scalar_t__ VLC_H2_DEFAULT_MAX_HEADER_TABLE ;
 int VLC_H2_FRAME_SETTINGS ;
 scalar_t__ VLC_H2_INIT_WINDOW ;
 scalar_t__ VLC_H2_MAX_FRAME ;
 scalar_t__ VLC_H2_MAX_HEADER_LIST ;
 scalar_t__ VLC_H2_MAX_HEADER_TABLE ;
 scalar_t__ VLC_H2_MAX_STREAMS ;
 int VLC_H2_SETTING_ENABLE_PUSH ;
 int VLC_H2_SETTING_HEADER_TABLE_SIZE ;
 int VLC_H2_SETTING_INITIAL_WINDOW_SIZE ;
 int VLC_H2_SETTING_MAX_CONCURRENT_STREAMS ;
 int VLC_H2_SETTING_MAX_FRAME_SIZE ;
 int VLC_H2_SETTING_MAX_HEADER_LIST_SIZE ;
 scalar_t__ unlikely (int ) ;
 struct vlc_h2_frame* vlc_h2_frame_alloc (int ,int ,int ,unsigned int) ;
 int * vlc_h2_frame_payload (struct vlc_h2_frame*) ;

struct vlc_h2_frame *vlc_h2_frame_settings(void)
{
    unsigned n = (VLC_H2_MAX_HEADER_TABLE != VLC_H2_DEFAULT_MAX_HEADER_TABLE)
               + 1



               + (VLC_H2_INIT_WINDOW != VLC_H2_DEFAULT_INIT_WINDOW)
               + (VLC_H2_MAX_FRAME != VLC_H2_DEFAULT_MAX_FRAME)



    ;
    struct vlc_h2_frame *f = vlc_h2_frame_alloc(VLC_H2_FRAME_SETTINGS, 0, 0,
                                                n * 6);
    if (unlikely(f == ((void*)0)))
        return ((void*)0);

    uint8_t *p = vlc_h2_frame_payload(f);







    SetWBE(p, VLC_H2_SETTING_ENABLE_PUSH);
    SetDWBE(p + 2, 0);
    p += 6;
    return f;
}
