
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; TYPE_1__* sources; } ;
struct TYPE_7__ {TYPE_2__ timer; } ;
typedef TYPE_3__ vlc_player_t ;
struct TYPE_5__ {int listeners; } ;


 size_t VLC_PLAYER_TIMER_TYPE_COUNT ;
 int assert (int ) ;
 int vlc_list_is_empty (int *) ;
 int vlc_mutex_destroy (int *) ;

void
vlc_player_DestroyTimer(vlc_player_t *player)
{
    for (size_t i = 0; i < VLC_PLAYER_TIMER_TYPE_COUNT; ++i)
        assert(vlc_list_is_empty(&player->timer.sources[i].listeners));
    vlc_mutex_destroy(&player->timer.lock);
}
