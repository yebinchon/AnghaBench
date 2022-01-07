
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


 int libvlc_MediaPlayerCorked ;
 int libvlc_MediaPlayerUncorked ;
 int libvlc_event_send (int *,TYPE_2__*) ;

__attribute__((used)) static void
on_cork_changed(vlc_player_t *player, unsigned cork_count, void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    event.type = cork_count ? libvlc_MediaPlayerCorked
                            : libvlc_MediaPlayerUncorked;

    libvlc_event_send(&mp->event_manager, &event);
}
