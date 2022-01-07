
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_player_t ;
struct TYPE_8__ {int event_manager; } ;
typedef TYPE_3__ libvlc_media_player_t ;
struct TYPE_6__ {int new_length; } ;
struct TYPE_7__ {TYPE_1__ media_player_length_changed; } ;
struct TYPE_9__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;


 int MS_FROM_VLC_TICK (int ) ;
 int libvlc_MediaPlayerLengthChanged ;
 int libvlc_event_send (int *,TYPE_4__*) ;

__attribute__((used)) static void
on_length_changed(vlc_player_t *player, vlc_tick_t new_length, void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;

    event.type = libvlc_MediaPlayerLengthChanged;
    event.u.media_player_length_changed.new_length =
        MS_FROM_VLC_TICK(new_length);

    libvlc_event_send(&mp->event_manager, &event);
}
