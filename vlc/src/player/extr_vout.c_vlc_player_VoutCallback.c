
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_4__ {scalar_t__ b_bool; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_player_t ;
typedef int vlc_object_t ;


 int VLC_SUCCESS ;
 int on_fullscreen_changed ;
 int on_wallpaper_mode_changed ;
 scalar_t__ strcmp (char const*,char*) ;
 int vlc_assert_unreachable () ;
 int vlc_player_vout_SendEvent (int *,int ,int *,scalar_t__) ;

__attribute__((used)) static int
vlc_player_VoutCallback(vlc_object_t *this, const char *var,
                        vlc_value_t oldval, vlc_value_t newval, void *data)
{
    vlc_player_t *player = data;

    if (strcmp(var, "fullscreen") == 0)
    {
        if (oldval.b_bool != newval.b_bool )
            vlc_player_vout_SendEvent(player, on_fullscreen_changed,
                                      (vout_thread_t *)this, newval.b_bool);
    }
    else if (strcmp(var, "video-wallpaper") == 0)
    {
        if (oldval.b_bool != newval.b_bool )
            vlc_player_vout_SendEvent(player, on_wallpaper_mode_changed,
                                      (vout_thread_t *)this, newval.b_bool);
    }
    else
        vlc_assert_unreachable();

    return VLC_SUCCESS;
}
