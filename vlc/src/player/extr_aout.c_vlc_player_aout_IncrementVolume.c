
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int audio_output_t ;


 int aout_Release (int *) ;
 int aout_VolumeUpdate (int *,int,float*) ;
 int * vlc_player_aout_Hold (int *) ;

int
vlc_player_aout_IncrementVolume(vlc_player_t *player, int steps, float *result)
{
    audio_output_t *aout = vlc_player_aout_Hold(player);
    if (!aout)
        return -1;
    int ret = aout_VolumeUpdate(aout, steps, result);
    aout_Release(aout);

    return ret;
}
