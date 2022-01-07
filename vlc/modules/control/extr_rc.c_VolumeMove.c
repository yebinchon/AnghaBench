
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int psz_string; } ;
typedef TYPE_2__ vlc_value_t ;
typedef int vlc_player_t ;
struct TYPE_8__ {TYPE_1__* p_sys; } ;
typedef TYPE_3__ intf_thread_t ;
struct TYPE_6__ {int playlist; } ;


 int atoi (int ) ;
 int strcmp (char const*,char*) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int vlc_player_aout_IncrementVolume (int *,int,float*) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static void VolumeMove(intf_thread_t *intf, char const *psz_cmd,
                       vlc_value_t newval)
{
    vlc_player_t *player = vlc_playlist_GetPlayer(intf->p_sys->playlist);

    float volume;
    int i_nb_steps = atoi(newval.psz_string);

    if( !strcmp(psz_cmd, "voldown") )
        i_nb_steps *= -1;

    vlc_player_Lock(player);
    vlc_player_aout_IncrementVolume(player, i_nb_steps, &volume);
    vlc_player_Unlock(player);
}
