
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event_manager; } ;
typedef TYPE_1__ libvlc_media_player_t ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ libvlc_event_t ;
typedef int audio_output_t ;


 int libvlc_MediaPlayerMuted ;
 int libvlc_MediaPlayerUnmuted ;
 int libvlc_event_send (int *,TYPE_2__*) ;

__attribute__((used)) static void
on_mute_changed(audio_output_t *aout, bool new_muted, void *data)
{
    (void) aout;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    event.type = new_muted ? libvlc_MediaPlayerMuted
                           : libvlc_MediaPlayerUnmuted;

    libvlc_event_send(&mp->event_manager, &event);
}
