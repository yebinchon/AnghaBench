
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {int resource; } ;
typedef TYPE_1__ vlc_player_t ;


 int * input_resource_HoldDummyVout (int ) ;
 int input_resource_HoldVouts (int ,int ***,size_t*) ;
 int ** vlc_alloc (int,int) ;

vout_thread_t **
vlc_player_vout_HoldAll(vlc_player_t *player, size_t *count)
{
    vout_thread_t **vouts;
    input_resource_HoldVouts(player->resource, &vouts, count);

    if (*count == 0)
    {
        vouts = vlc_alloc(1, sizeof(*vouts));
        if (vouts)
        {
            *count = 1;
            vouts[0] = input_resource_HoldDummyVout(player->resource);
        }
    }
    return vouts;
}
