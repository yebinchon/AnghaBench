
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_9__ {scalar_t__ system_date; } ;
struct TYPE_6__ {TYPE_4__ point; } ;
struct TYPE_7__ {int lock; TYPE_1__ best_source; } ;
struct TYPE_8__ {TYPE_2__ timer; } ;
typedef TYPE_3__ vlc_player_t ;


 int VLC_EGENERIC ;
 scalar_t__ VLC_TICK_INVALID ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_player_timer_point_Interpolate (TYPE_4__*,int ,int *,float*) ;

int
vlc_player_GetTimerPoint(vlc_player_t *player, vlc_tick_t system_now,
                         vlc_tick_t *out_ts, float *out_pos)
{
    vlc_mutex_lock(&player->timer.lock);
    if (player->timer.best_source.point.system_date == VLC_TICK_INVALID)
    {
        vlc_mutex_unlock(&player->timer.lock);
        return VLC_EGENERIC;
    }
    int ret =
        vlc_player_timer_point_Interpolate(&player->timer.best_source.point,
                                           system_now, out_ts, out_pos);

    vlc_mutex_unlock(&player->timer.lock);
    return ret;
}
