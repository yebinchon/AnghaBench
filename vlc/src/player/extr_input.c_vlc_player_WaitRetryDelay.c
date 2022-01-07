
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {unsigned int error_count; int lock; int start_delay_cond; } ;
typedef TYPE_1__ vlc_player_t ;


 int RETRY_TIMEOUT_BASE ;
 int RETRY_TIMEOUT_MAX ;
 scalar_t__ vlc_cond_timedwait (int *,int *,int) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static bool
vlc_player_WaitRetryDelay(vlc_player_t *player)
{


    if (player->error_count)
    {

        vlc_tick_t delay = VLC_TICK_FROM_MS(100);
        for (unsigned i = 1; i < player->error_count
          && delay < VLC_TICK_FROM_MS(3200); ++i)
            delay *= 2;
        delay += vlc_tick_now();

        while (player->error_count > 0
            && vlc_cond_timedwait(&player->start_delay_cond, &player->lock,
                                  delay) == 0);
        if (player->error_count == 0)
            return 0;
    }
    return 1;
}
