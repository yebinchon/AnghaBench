
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct TYPE_8__ {int event_manager; } ;
typedef TYPE_3__ libvlc_media_player_t ;
struct TYPE_7__ {int i_id; int i_type; } ;
struct TYPE_6__ {TYPE_2__ media_player_es_changed; } ;
struct TYPE_9__ {TYPE_1__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int libvlc_MediaPlayerESSelected ;
 int libvlc_event_send (int *,TYPE_4__*) ;
 int track_type_from_cat (int) ;
 int vlc_es_id_GetCat (int *) ;
 int vlc_es_id_GetInputId (int *) ;

__attribute__((used)) static void
on_track_selection_changed(vlc_player_t *player, vlc_es_id_t *unselected_id,
                           vlc_es_id_t *selected_id, void *data)
{
    (void) player;
    (void) unselected_id;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerESSelected;

    if (selected_id)
    {
        enum es_format_category_e cat = vlc_es_id_GetCat(selected_id);
        event.u.media_player_es_changed.i_type = track_type_from_cat(cat);
        event.u.media_player_es_changed.i_id =
            vlc_es_id_GetInputId(selected_id);
        libvlc_event_send(&mp->event_manager, &event);
    }
}
