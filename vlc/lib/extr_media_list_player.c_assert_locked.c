
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mp_callback_lock; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int vlc_mutex_assert (int *) ;

__attribute__((used)) static inline void assert_locked(libvlc_media_list_player_t * p_mlp)
{
    vlc_mutex_assert(&p_mlp->mp_callback_lock);
    (void) p_mlp;
}
