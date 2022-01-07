
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int audio_output_t ;


 int aout_Release (int *) ;
 float aout_VolumeGet (int *) ;
 int * vlc_player_aout_Hold (int *) ;

float
vlc_player_aout_GetVolume(vlc_player_t *player)
{
    audio_output_t *aout = vlc_player_aout_Hold(player);
    if (!aout)
        return -1.f;
    float vol = aout_VolumeGet(aout);
    aout_Release(aout);

    return vol;
}
