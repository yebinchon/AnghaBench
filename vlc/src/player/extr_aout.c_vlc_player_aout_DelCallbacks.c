
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int audio_output_t ;


 int aout_Release (int *) ;
 int var_DelCallback (int *,char*,int ,int *) ;
 int vlc_player_AoutCallback ;
 int * vlc_player_aout_Hold (int *) ;

void
vlc_player_aout_DelCallbacks(vlc_player_t *player)
{
    audio_output_t *aout = vlc_player_aout_Hold(player);
    if (!aout)
        return;

    var_DelCallback(aout, "volume", vlc_player_AoutCallback, player);
    var_DelCallback(aout, "mute", vlc_player_AoutCallback, player);
    var_DelCallback(aout, "device", vlc_player_AoutCallback, player);

    aout_Release(aout);
}
