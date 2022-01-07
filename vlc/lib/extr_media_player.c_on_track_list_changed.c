
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_7__ {int i_cat; } ;
struct vlc_player_track {int es_id; TYPE_1__ fmt; } ;
struct TYPE_10__ {int event_manager; } ;
typedef TYPE_4__ libvlc_media_player_t ;
struct TYPE_8__ {int i_id; int i_type; } ;
struct TYPE_9__ {TYPE_2__ media_player_es_changed; } ;
struct TYPE_11__ {TYPE_3__ u; int type; } ;
typedef TYPE_5__ libvlc_event_t ;
typedef enum vlc_player_list_action { ____Placeholder_vlc_player_list_action } vlc_player_list_action ;


 int VLC_PLAYER_LIST_ADDED ;
 int VLC_PLAYER_LIST_REMOVED ;
 int libvlc_MediaPlayerESAdded ;
 int libvlc_MediaPlayerESDeleted ;
 int libvlc_event_send (int *,TYPE_5__*) ;
 int track_type_from_cat (int ) ;
 int vlc_es_id_GetInputId (int ) ;

__attribute__((used)) static void
on_track_list_changed(vlc_player_t *player, enum vlc_player_list_action action,
                      const struct vlc_player_track *track, void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    if (action == VLC_PLAYER_LIST_ADDED)
        event.type = libvlc_MediaPlayerESAdded;
    else if (action == VLC_PLAYER_LIST_REMOVED)
        event.type = libvlc_MediaPlayerESDeleted;
    else

        return;

    event.u.media_player_es_changed.i_type =
        track_type_from_cat(track->fmt.i_cat);
    event.u.media_player_es_changed.i_id = vlc_es_id_GetInputId(track->es_id);

    libvlc_event_send(&mp->event_manager, &event);
}
