
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_player_t ;
struct TYPE_10__ {int event_manager; } ;
typedef TYPE_4__ libvlc_media_player_t ;
struct TYPE_7__ {int new_time; } ;
struct TYPE_8__ {float new_position; } ;
struct TYPE_9__ {TYPE_1__ media_player_time_changed; TYPE_2__ media_player_position_changed; } ;
struct TYPE_11__ {TYPE_3__ u; int type; } ;
typedef TYPE_5__ libvlc_event_t ;


 int MS_FROM_VLC_TICK (int ) ;
 int libvlc_MediaPlayerPositionChanged ;
 int libvlc_MediaPlayerTimeChanged ;
 int libvlc_event_send (int *,TYPE_5__*) ;

__attribute__((used)) static void
on_position_changed(vlc_player_t *player, vlc_tick_t new_time, float new_pos,
                    void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;

    event.type = libvlc_MediaPlayerPositionChanged;
    event.u.media_player_position_changed.new_position = new_pos;
    libvlc_event_send(&mp->event_manager, &event);

    event.type = libvlc_MediaPlayerTimeChanged;
    event.u.media_player_time_changed.new_time = MS_FROM_VLC_TICK(new_time);
    libvlc_event_send(&mp->event_manager, &event);
}
