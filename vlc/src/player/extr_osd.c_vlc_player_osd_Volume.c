
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_player_t ;


 int OSD_MUTE_ICON ;
 int OSD_VERT_SLIDER ;
 int _ (char*) ;
 int lroundf (float) ;
 float vlc_player_aout_GetVolume (int *) ;
 int vlc_player_aout_IsMuted (int *) ;
 int ** vlc_player_osd_HoldAll (int *,size_t*) ;
 int vlc_player_osd_ReleaseAll (int *,int **,size_t) ;
 scalar_t__ vlc_player_vout_IsFullscreen (int *) ;
 int vouts_osd_Icon (int **,size_t,int ) ;
 int vouts_osd_Message (int **,size_t,int ,int) ;
 int vouts_osd_Slider (int **,size_t,int,int ) ;

void
vlc_player_osd_Volume(vlc_player_t *player, bool mute_action)
{
    size_t count;
    vout_thread_t **vouts = vlc_player_osd_HoldAll(player, &count);

    bool mute = vlc_player_aout_IsMuted(player);
    int volume = lroundf(vlc_player_aout_GetVolume(player) * 100.f);
    if (mute_action && mute)
        vouts_osd_Icon(vouts, count, OSD_MUTE_ICON);
    else
    {
        if (vlc_player_vout_IsFullscreen(player))
            vouts_osd_Slider(vouts, count, volume, OSD_VERT_SLIDER);
        vouts_osd_Message(vouts, count, _("Volume: %ld%%"), volume);
    }

    vlc_player_osd_ReleaseAll(player, vouts, count);
}
