
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int audio_output_t ;


 int aout_EnableFilter (int *,char const*,int) ;
 int aout_Release (int *) ;
 int * vlc_player_aout_Hold (int *) ;

int
vlc_player_aout_EnableFilter(vlc_player_t *player, const char *name, bool add)
{
    audio_output_t *aout = vlc_player_aout_Hold(player);
    if (!aout)
        return -1;
    aout_EnableFilter(aout, name, add);
    aout_Release(aout);

    return 0;
}
