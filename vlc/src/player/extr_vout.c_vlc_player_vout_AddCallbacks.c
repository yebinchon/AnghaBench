
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_player_t ;


 size_t ARRAY_SIZE (char**) ;
 char** osd_vars ;
 int var_AddCallback (int *,char*,int ,int *) ;
 int vlc_player_VoutCallback ;
 int vlc_player_vout_OSDCallback ;

void
vlc_player_vout_AddCallbacks(vlc_player_t *player, vout_thread_t *vout)
{
    var_AddCallback(vout, "fullscreen", vlc_player_VoutCallback, player);
    var_AddCallback(vout, "video-wallpaper", vlc_player_VoutCallback, player);

    for (size_t i = 0; i < ARRAY_SIZE(osd_vars); ++i)
        var_AddCallback(vout, osd_vars[i], vlc_player_vout_OSDCallback, player);
}
