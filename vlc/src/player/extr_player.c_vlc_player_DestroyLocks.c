
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wait; } ;
struct TYPE_5__ {TYPE_1__ destructor; int start_delay_cond; int aout_listeners_lock; int vout_listeners_lock; int lock; } ;
typedef TYPE_2__ vlc_player_t ;


 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void
vlc_player_DestroyLocks(vlc_player_t *player)
{
    vlc_mutex_destroy(&player->lock);
    vlc_mutex_destroy(&player->vout_listeners_lock);
    vlc_mutex_destroy(&player->aout_listeners_lock);
    vlc_cond_destroy(&player->start_delay_cond);
    vlc_cond_destroy(&player->destructor.wait);
}
