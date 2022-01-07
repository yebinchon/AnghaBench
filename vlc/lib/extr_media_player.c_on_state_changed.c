
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
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;







 int libvlc_MediaPlayerEndReached ;
 int libvlc_MediaPlayerOpening ;
 int libvlc_MediaPlayerPaused ;
 int libvlc_MediaPlayerPlaying ;
 int libvlc_MediaPlayerStopped ;
 int libvlc_event_send (int *,TYPE_2__*) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void
on_state_changed(vlc_player_t *player, enum vlc_player_state new_state,
                 void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    switch (new_state) {
        case 129:
            event.type = libvlc_MediaPlayerStopped;
            break;
        case 128:
            event.type = libvlc_MediaPlayerEndReached;
            break;
        case 130:
            event.type = libvlc_MediaPlayerOpening;
            break;
        case 131:
            event.type = libvlc_MediaPlayerPlaying;
            break;
        case 132:
            event.type = libvlc_MediaPlayerPaused;
            break;
        default:
            vlc_assert_unreachable();
    }

    libvlc_event_send(&mp->event_manager, &event);
}
