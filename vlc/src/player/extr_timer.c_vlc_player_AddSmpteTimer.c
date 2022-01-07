
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_player_timer_id {int node; void* data; struct vlc_player_timer_smpte_cbs const* smpte_cbs; void* last_update_date; void* period; } ;
typedef struct vlc_player_timer_id vlc_player_timer_id ;
struct TYPE_5__ {int listeners; } ;
struct TYPE_6__ {int lock; TYPE_1__ smpte_source; } ;
struct TYPE_7__ {TYPE_2__ timer; } ;
typedef TYPE_3__ vlc_player_t ;
struct vlc_player_timer_smpte_cbs {scalar_t__ on_update; } ;


 void* VLC_TICK_INVALID ;
 int assert (int) ;
 struct vlc_player_timer_id* malloc (int) ;
 int vlc_list_append (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_player_timer_id *
vlc_player_AddSmpteTimer(vlc_player_t *player,
                         const struct vlc_player_timer_smpte_cbs *cbs,
                         void *data)
{
    assert(cbs && cbs->on_update);

    struct vlc_player_timer_id *timer = malloc(sizeof(*timer));
    if (!timer)
        return ((void*)0);
    timer->period = VLC_TICK_INVALID;
    timer->last_update_date = VLC_TICK_INVALID;
    timer->smpte_cbs = cbs;
    timer->data = data;

    vlc_mutex_lock(&player->timer.lock);
    vlc_list_append(&timer->node, &player->timer.smpte_source.listeners);
    vlc_mutex_unlock(&player->timer.lock);

    return timer;
}
