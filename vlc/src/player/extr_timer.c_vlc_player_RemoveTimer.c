
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int node; } ;
typedef TYPE_2__ vlc_player_timer_id ;
struct TYPE_8__ {int lock; } ;
struct TYPE_10__ {TYPE_1__ timer; } ;
typedef TYPE_3__ vlc_player_t ;


 int assert (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int vlc_list_remove (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_player_RemoveTimer(vlc_player_t *player, vlc_player_timer_id *timer)
{
    assert(timer);

    vlc_mutex_lock(&player->timer.lock);
    vlc_list_remove(&timer->node);
    vlc_mutex_unlock(&player->timer.lock);

    free(timer);
}
