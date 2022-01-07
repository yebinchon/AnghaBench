
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wait; } ;
struct TYPE_5__ {TYPE_1__ destructor; int start_delay_cond; int aout_listeners_lock; int vout_listeners_lock; int lock; } ;
typedef TYPE_2__ vlc_player_t ;
typedef enum vlc_player_lock_type { ____Placeholder_vlc_player_lock_type } vlc_player_lock_type ;


 int VLC_PLAYER_LOCK_REENTRANT ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_mutex_init_recursive (int *) ;

__attribute__((used)) static void
vlc_player_InitLocks(vlc_player_t *player, enum vlc_player_lock_type lock_type)
{
    if (lock_type == VLC_PLAYER_LOCK_REENTRANT)
        vlc_mutex_init_recursive(&player->lock);
    else
        vlc_mutex_init(&player->lock);

    vlc_mutex_init(&player->vout_listeners_lock);
    vlc_mutex_init(&player->aout_listeners_lock);
    vlc_cond_init(&player->start_delay_cond);
    vlc_cond_init(&player->destructor.wait);
}
