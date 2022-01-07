
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ vlc_player_t ;


 int assert (TYPE_1__*) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static inline void
vlc_player_assert_locked(vlc_player_t *player)
{
    assert(player);
    vlc_mutex_assert(&player->lock);
}
