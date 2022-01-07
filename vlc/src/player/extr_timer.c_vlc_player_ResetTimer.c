
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int last_framenum; } ;
struct TYPE_7__ {TYPE_1__ smpte; } ;
struct TYPE_8__ {float input_position; int lock; TYPE_2__ smpte_source; void* last_ts; int input_normal_time; void* input_length; int state; } ;
struct TYPE_9__ {TYPE_3__ timer; } ;
typedef TYPE_4__ vlc_player_t ;


 int ULONG_MAX ;
 int VLC_PLAYER_TIMER_STATE_DISCONTINUITY ;
 int VLC_TICK_0 ;
 void* VLC_TICK_INVALID ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_player_ResetTimer(vlc_player_t *player)
{
    vlc_mutex_lock(&player->timer.lock);

    player->timer.state = VLC_PLAYER_TIMER_STATE_DISCONTINUITY;
    player->timer.input_length = VLC_TICK_INVALID;
    player->timer.input_normal_time = VLC_TICK_0;
    player->timer.last_ts = VLC_TICK_INVALID;
    player->timer.input_position = 0.f;
    player->timer.smpte_source.smpte.last_framenum = ULONG_MAX;

    vlc_mutex_unlock(&player->timer.lock);
}
