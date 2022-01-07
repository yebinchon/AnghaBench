
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_title {int dummy; } ;
struct vlc_player_chapter {int dummy; } ;
struct TYPE_8__ {int event_manager; } ;
typedef TYPE_3__ libvlc_media_player_t ;
struct TYPE_6__ {size_t new_chapter; } ;
struct TYPE_7__ {TYPE_1__ media_player_chapter_changed; } ;
struct TYPE_9__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;


 int libvlc_MediaPlayerChapterChanged ;
 int libvlc_event_send (int *,TYPE_4__*) ;

__attribute__((used)) static void
on_chapter_selection_changed(vlc_player_t *player,
                             const struct vlc_player_title *title,
                             size_t title_idx,
                             const struct vlc_player_chapter *new_chapter,
                             size_t new_chapter_idx,
                             void *data)
{
    (void) player;
    (void) title;
    (void) title_idx;
    (void) new_chapter;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerChapterChanged;
    event.u.media_player_chapter_changed.new_chapter = new_chapter_idx;

    libvlc_event_send(&mp->event_manager, &event);
}
