
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int thread; int wait; } ;
struct TYPE_11__ {int deleting; scalar_t__ renderer; int resource; scalar_t__ next_media; scalar_t__ media; TYPE_1__ destructor; int lock; int aout_listeners; int vout_listeners; int listeners; scalar_t__ input; } ;
typedef TYPE_2__ vlc_player_t ;


 int assert (int ) ;
 int input_item_Release (scalar_t__) ;
 int input_resource_Release (int ) ;
 int var_DelCallback (TYPE_2__*,char*,int ,int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_list_is_empty (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_2__*) ;
 int vlc_player_CorkCallback ;
 int vlc_player_DestroyLocks (TYPE_2__*) ;
 int vlc_player_DestroyTimer (TYPE_2__*) ;
 int vlc_player_aout_DelCallbacks (TYPE_2__*) ;
 int vlc_player_destructor_AddInput (TYPE_2__*,scalar_t__) ;
 int vlc_renderer_item_release (scalar_t__) ;

void
vlc_player_Delete(vlc_player_t *player)
{
    vlc_mutex_lock(&player->lock);

    if (player->input)
        vlc_player_destructor_AddInput(player, player->input);

    player->deleting = 1;
    vlc_cond_signal(&player->destructor.wait);

    assert(vlc_list_is_empty(&player->listeners));
    assert(vlc_list_is_empty(&player->vout_listeners));
    assert(vlc_list_is_empty(&player->aout_listeners));

    vlc_mutex_unlock(&player->lock);

    vlc_join(player->destructor.thread, ((void*)0));

    if (player->media)
        input_item_Release(player->media);
    if (player->next_media)
        input_item_Release(player->next_media);

    vlc_player_DestroyLocks(player);

    vlc_player_DestroyTimer(player);

    vlc_player_aout_DelCallbacks(player);
    var_DelCallback(player, "corks", vlc_player_CorkCallback, ((void*)0));

    input_resource_Release(player->resource);
    if (player->renderer)
        vlc_renderer_item_release(player->renderer);

    vlc_object_delete(player);
}
