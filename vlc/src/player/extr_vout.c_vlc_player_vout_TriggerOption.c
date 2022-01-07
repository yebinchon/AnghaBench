
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {int resource; } ;
typedef TYPE_1__ vlc_player_t ;


 int * input_resource_HoldVout (int ) ;
 int var_TriggerCallback (int *,char const*) ;
 int vout_Release (int *) ;

__attribute__((used)) static void
vlc_player_vout_TriggerOption(vlc_player_t *player, const char *option)
{


    vout_thread_t *vout = input_resource_HoldVout(player->resource);
    var_TriggerCallback(vout, option);
    vout_Release(vout);
}
