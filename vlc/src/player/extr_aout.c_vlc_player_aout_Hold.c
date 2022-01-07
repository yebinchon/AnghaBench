
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resource; } ;
typedef TYPE_1__ vlc_player_t ;
typedef int audio_output_t ;


 int * input_resource_HoldAout (int ) ;

audio_output_t *
vlc_player_aout_Hold(vlc_player_t *player)
{
    return input_resource_HoldAout(player->resource);
}
