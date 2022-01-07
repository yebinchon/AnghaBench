
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_13__ {scalar_t__ e_playback_mode; int event_manager; int p_mlist; int p_mi; int current_playing_item_path; } ;
typedef TYPE_3__ libvlc_media_list_player_t ;
typedef int libvlc_media_list_path_t ;
struct TYPE_11__ {int * item; } ;
struct TYPE_12__ {TYPE_1__ media_list_player_next_item_set; } ;
struct TYPE_14__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;


 int assert_locked (TYPE_3__*) ;
 int get_next_path (TYPE_3__*,int) ;
 int get_previous_path (TYPE_3__*,int) ;
 int libvlc_MediaListPlayerNextItemSet ;
 int libvlc_MediaListPlayerPlayed ;
 int libvlc_event_send (int *,TYPE_4__*) ;
 int * libvlc_media_list_item_at_path (int ,int ) ;
 int libvlc_media_list_lock (int ) ;
 int libvlc_media_list_path_dump (int ) ;
 int libvlc_media_list_unlock (int ) ;
 int libvlc_media_player_play (int ) ;
 int libvlc_media_release (int *) ;
 scalar_t__ libvlc_playback_mode_loop ;
 scalar_t__ libvlc_playback_mode_repeat ;
 int libvlc_printerr (char*) ;
 int printf (char*) ;
 int set_current_playing_item (TYPE_3__*,int ) ;

__attribute__((used)) static int set_relative_playlist_position_and_play(
                                      libvlc_media_list_player_t * p_mlp,
                                      int i_relative_position)
{
    assert_locked(p_mlp);

    if (!p_mlp->p_mlist)
    {
        libvlc_printerr("No media list");
        return -1;
    }

    libvlc_media_list_lock(p_mlp->p_mlist);

    libvlc_media_list_path_t path = p_mlp->current_playing_item_path;

    if(p_mlp->e_playback_mode != libvlc_playback_mode_repeat)
    {
        bool b_loop = (p_mlp->e_playback_mode == libvlc_playback_mode_loop);

        while (i_relative_position > 0)
        {
            path = get_next_path(p_mlp, b_loop);
            set_current_playing_item(p_mlp, path);
            --i_relative_position;
        }

        while (i_relative_position < 0)
        {
            path = get_previous_path(p_mlp, b_loop);
            set_current_playing_item(p_mlp, path);
            ++i_relative_position;
        }
    }
    else
    {
        set_current_playing_item(p_mlp, path);
    }






    if (!path)
    {
        libvlc_media_list_unlock(p_mlp->p_mlist);

        libvlc_event_t event;
        event.type = libvlc_MediaListPlayerPlayed;
        libvlc_event_send(&p_mlp->event_manager, &event);
        return -1;
    }

    libvlc_media_player_play(p_mlp->p_mi);

    libvlc_media_list_unlock(p_mlp->p_mlist);


    libvlc_event_t event;
    event.type = libvlc_MediaListPlayerNextItemSet;
    libvlc_media_t * p_md = libvlc_media_list_item_at_path(p_mlp->p_mlist, path);
    event.u.media_list_player_next_item_set.item = p_md;
    libvlc_event_send(&p_mlp->event_manager, &event);
    libvlc_media_release(p_md);
    return 0;
}
