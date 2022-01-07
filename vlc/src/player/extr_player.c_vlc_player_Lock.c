
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_5__ {int lock; TYPE_1__ timer; int aout_listeners_lock; int vout_listeners_lock; } ;
typedef TYPE_2__ vlc_player_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_marked (int *) ;

void
vlc_player_Lock(vlc_player_t *player)
{


    assert(!vlc_mutex_marked(&player->vout_listeners_lock));
    assert(!vlc_mutex_marked(&player->aout_listeners_lock));


    assert(!vlc_mutex_marked(&player->timer.lock));

    vlc_mutex_lock(&player->lock);
}
