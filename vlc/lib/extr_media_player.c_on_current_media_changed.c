
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_13__ {int * p_input_item; } ;
typedef TYPE_3__ libvlc_media_t ;
struct TYPE_14__ {int event_manager; TYPE_3__* p_md; int p_libvlc_instance; } ;
typedef TYPE_4__ libvlc_media_player_t ;
struct TYPE_11__ {TYPE_3__* new_media; } ;
struct TYPE_12__ {TYPE_1__ media_player_media_changed; } ;
struct TYPE_15__ {TYPE_2__ u; int type; } ;
typedef TYPE_5__ libvlc_event_t ;
typedef int input_item_t ;


 int libvlc_MediaPlayerMediaChanged ;
 int libvlc_event_send (int *,TYPE_5__*) ;
 TYPE_3__* libvlc_media_new_from_input_item (int ,int *) ;
 int libvlc_media_release (TYPE_3__*) ;
 int media_attach_preparsed_event (TYPE_3__*) ;
 int media_detach_preparsed_event (TYPE_3__*) ;

__attribute__((used)) static void
on_current_media_changed(vlc_player_t *player, input_item_t *new_media,
                         void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_media_t *md = mp->p_md;

    input_item_t *media = md ? md->p_input_item : ((void*)0);
    if (new_media == media)

        return;

    if (md)
        media_detach_preparsed_event(md);

    if (new_media)
    {
        mp->p_md = libvlc_media_new_from_input_item(mp->p_libvlc_instance,
                                                    new_media);
        if (!mp->p_md)

            return;

        media_attach_preparsed_event(mp->p_md);
    }
    else
        mp->p_md = ((void*)0);

    libvlc_media_release(md);

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerMediaChanged;
    event.u.media_player_media_changed.new_media = mp->p_md;
    libvlc_event_send(&mp->event_manager, &event);
}
