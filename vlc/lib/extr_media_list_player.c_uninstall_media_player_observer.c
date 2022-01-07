
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mp_callback_lock; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int assert_locked (TYPE_1__*) ;
 int libvlc_MediaPlayerEndReached ;
 int libvlc_event_detach (int ,int ,int ,TYPE_1__*) ;
 int media_player_reached_end ;
 int mplayer_em (TYPE_1__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
uninstall_media_player_observer(libvlc_media_list_player_t * p_mlp)
{
    assert_locked(p_mlp);



    vlc_mutex_unlock(&p_mlp->mp_callback_lock);
    libvlc_event_detach(mplayer_em(p_mlp), libvlc_MediaPlayerEndReached, media_player_reached_end, p_mlp);


    vlc_mutex_lock(&p_mlp->mp_callback_lock);



}
