
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ error_count; int start_delay_cond; } ;
typedef TYPE_1__ vlc_player_t ;


 int vlc_cond_signal (int *) ;

__attribute__((used)) static void
vlc_player_CancelWaitError(vlc_player_t *player)
{
    if (player->error_count != 0)
    {
        player->error_count = 0;
        vlc_cond_signal(&player->start_delay_cond);
    }
}
