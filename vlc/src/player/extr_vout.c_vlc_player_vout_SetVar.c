
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_value_t ;
typedef int vlc_player_t ;


 int var_SetChecked (int *,char const*,int,int ) ;
 int * vlc_player_vout_Hold (int *) ;
 int vout_Release (int *) ;

__attribute__((used)) static void
vlc_player_vout_SetVar(vlc_player_t *player, const char *name, int type,
                       vlc_value_t val)
{
    vout_thread_t *vout = vlc_player_vout_Hold(player);
    var_SetChecked(vout, name, type, val);
    vout_Release(vout);
}
