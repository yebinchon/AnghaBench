
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int event_manager; int * current_playing_item_path; int p_mi; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;
struct TYPE_9__ {int type; } ;
typedef TYPE_2__ libvlc_event_t ;


 int assert_locked (TYPE_1__*) ;
 int free (int *) ;
 int install_media_player_observer (TYPE_1__*) ;
 int libvlc_MediaListPlayerStopped ;
 int libvlc_event_send (int *,TYPE_2__*) ;
 int libvlc_media_player_stop_async (int ) ;
 int uninstall_media_player_observer (TYPE_1__*) ;

__attribute__((used)) static void stop(libvlc_media_list_player_t * p_mlp)
{
    assert_locked(p_mlp);


    uninstall_media_player_observer(p_mlp);
    libvlc_media_player_stop_async(p_mlp->p_mi);
    install_media_player_observer(p_mlp);

    free(p_mlp->current_playing_item_path);
    p_mlp->current_playing_item_path = ((void*)0);


    libvlc_event_t event;
    event.type = libvlc_MediaListPlayerStopped;
    libvlc_event_send(&p_mlp->event_manager, &event);
}
