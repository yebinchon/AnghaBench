
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_12__ {int event_manager; int p_mi; } ;
typedef TYPE_3__ libvlc_media_list_player_t ;
typedef int libvlc_media_list_path_t ;
struct TYPE_10__ {int * item; } ;
struct TYPE_11__ {TYPE_1__ media_list_player_next_item_set; } ;
struct TYPE_13__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;


 int libvlc_MediaListPlayerNextItemSet ;
 int libvlc_event_send (int *,TYPE_4__*) ;
 int libvlc_media_list_path_with_root_index (int) ;
 int * libvlc_media_player_get_media (int ) ;
 int libvlc_media_player_play (int ) ;
 int libvlc_media_release (int *) ;
 int lock (TYPE_3__*) ;
 int set_current_playing_item (TYPE_3__*,int ) ;
 int unlock (TYPE_3__*) ;

int libvlc_media_list_player_play_item_at_index(libvlc_media_list_player_t * p_mlp, int i_index)
{
    lock(p_mlp);
    libvlc_media_list_path_t path = libvlc_media_list_path_with_root_index(i_index);
    set_current_playing_item(p_mlp, path);
    libvlc_media_t *p_md = libvlc_media_player_get_media(p_mlp->p_mi);
    libvlc_media_player_play(p_mlp->p_mi);
    unlock(p_mlp);

    if (!p_md)
        return -1;


    libvlc_event_t event;
    event.type = libvlc_MediaListPlayerNextItemSet;
    event.u.media_list_player_next_item_set.item = p_md;
    libvlc_event_send(&p_mlp->event_manager, &event);
    libvlc_media_release(p_md);
    return 0;
}
