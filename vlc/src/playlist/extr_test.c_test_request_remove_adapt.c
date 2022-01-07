
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_playlist_listener_id ;
typedef int vlc_playlist_item_t ;
struct vlc_playlist_callbacks {int on_items_removed; } ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
struct callback_ctx {TYPE_3__ vec_items_removed; } ;
typedef int input_item_t ;
struct TYPE_4__ {int playlist_size; } ;
struct TYPE_5__ {int index; int count; TYPE_1__ state; } ;


 struct callback_ctx CALLBACK_CTX_INITIALIZER ;
 int CreateDummyMediaArray (int **,int) ;
 int DestroyMediaArray (int **,int) ;
 int EXPECT_AT (int,int) ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int callback_ctx_destroy (struct callback_ctx*) ;
 int callback_on_items_removed ;
 int * vlc_playlist_AddListener (int *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ;
 int vlc_playlist_Append (int *,int **,int) ;
 int vlc_playlist_Count (int *) ;
 int vlc_playlist_Delete (int *) ;
 int * vlc_playlist_Get (int *,int) ;
 int * vlc_playlist_New (int *) ;
 int vlc_playlist_RemoveListener (int *,int *) ;
 int vlc_playlist_RequestRemove (int *,int **,int,int) ;
 int * vlc_playlist_item_New (int *,int ) ;
 int vlc_playlist_item_Release (int *) ;

__attribute__((used)) static void
test_request_remove_adapt(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[11];
    CreateDummyMediaArray(media, 11);


    int ret = vlc_playlist_Append(playlist, media, 10);
    assert(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_items_removed = callback_on_items_removed,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            vlc_playlist_AddListener(playlist, &cbs, &ctx, 0);
    assert(listener);

    vlc_playlist_item_t *dummy = vlc_playlist_item_New(media[10], 0);
    assert(dummy);



    vlc_playlist_item_t *items_to_remove[] = {
        vlc_playlist_Get(playlist, 3),
        vlc_playlist_Get(playlist, 2),
        vlc_playlist_Get(playlist, 6),
        vlc_playlist_Get(playlist, 9),
        vlc_playlist_Get(playlist, 1),
        dummy,
        vlc_playlist_Get(playlist, 8),
    };

    ret = vlc_playlist_RequestRemove(playlist, items_to_remove, 7, 3);
    assert(ret == VLC_SUCCESS);

    vlc_playlist_item_Release(dummy);

    assert(vlc_playlist_Count(playlist) == 4);

    EXPECT_AT(0, 0);
    EXPECT_AT(1, 4);
    EXPECT_AT(2, 5);
    EXPECT_AT(3, 7);




    assert(ctx.vec_items_removed.size == 3);

    assert(ctx.vec_items_removed.data[0].index == 8);
    assert(ctx.vec_items_removed.data[0].count == 2);
    assert(ctx.vec_items_removed.data[0].state.playlist_size == 8);

    assert(ctx.vec_items_removed.data[1].index == 6);
    assert(ctx.vec_items_removed.data[1].count == 1);
    assert(ctx.vec_items_removed.data[1].state.playlist_size == 7);

    assert(ctx.vec_items_removed.data[2].index == 1);
    assert(ctx.vec_items_removed.data[2].count == 3);
    assert(ctx.vec_items_removed.data[2].state.playlist_size == 4);

    callback_ctx_destroy(&ctx);
    vlc_playlist_RemoveListener(playlist, listener);
    DestroyMediaArray(media, 11);
    vlc_playlist_Delete(playlist);
}
