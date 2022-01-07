
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_4__ {int event_manager; } ;
typedef TYPE_1__ libvlc_media_player_t ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ libvlc_event_t ;
typedef enum vlc_player_error { ____Placeholder_vlc_player_error } vlc_player_error ;




 int libvlc_MediaPlayerEncounteredError ;
 int libvlc_MediaPlayerNothingSpecial ;
 int libvlc_event_send (int *,TYPE_2__*) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void
on_error_changed(vlc_player_t *player, enum vlc_player_error error, void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    switch (error) {
        case 128:
            event.type = libvlc_MediaPlayerNothingSpecial;
            break;
        case 129:
            event.type = libvlc_MediaPlayerEncounteredError;
            break;
        default:
            vlc_assert_unreachable();
    }

    libvlc_event_send(&mp->event_manager, &event);
}
