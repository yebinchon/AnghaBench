
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mp_callback_lock; int seek_pending; int seek_offset; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;
typedef int libvlc_event_t ;


 int VLC_UNUSED (int const*) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
media_player_reached_end(const libvlc_event_t * p_event, void * p_user_data)
{
    VLC_UNUSED(p_event);
    libvlc_media_list_player_t * p_mlp = p_user_data;





    vlc_mutex_lock(&p_mlp->mp_callback_lock);
    p_mlp->seek_offset++;
    vlc_cond_signal(&p_mlp->seek_pending);
    vlc_mutex_unlock(&p_mlp->mp_callback_lock);
}
