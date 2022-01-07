
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {int resource; } ;
typedef TYPE_1__ vlc_player_t ;


 int * input_resource_HoldDummyVout (int ) ;
 int * input_resource_HoldVout (int ) ;

vout_thread_t *
vlc_player_vout_Hold(vlc_player_t *player)
{
    vout_thread_t *vout = input_resource_HoldVout(player->resource);
    return vout ? vout : input_resource_HoldDummyVout(player->resource);
}
