
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sources; int lock; } ;
struct TYPE_10__ {TYPE_2__ timer; } ;
typedef TYPE_4__ vlc_player_t ;
struct TYPE_9__ {int system_date; } ;
struct TYPE_7__ {int * es; TYPE_3__ point; int listeners; } ;


 size_t VLC_PLAYER_TIMER_TYPE_COUNT ;
 int VLC_TICK_INVALID ;
 int vlc_list_init (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_player_ResetTimer (TYPE_4__*) ;

void
vlc_player_InitTimer(vlc_player_t *player)
{
    vlc_mutex_init(&player->timer.lock);

    for (size_t i = 0; i < VLC_PLAYER_TIMER_TYPE_COUNT; ++i)
    {
        vlc_list_init(&player->timer.sources[i].listeners);
        player->timer.sources[i].point.system_date = VLC_TICK_INVALID;
        player->timer.sources[i].es = ((void*)0);
    }
    vlc_player_ResetTimer(player);
}
