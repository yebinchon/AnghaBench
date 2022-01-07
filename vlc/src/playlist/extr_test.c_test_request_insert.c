
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_playlist_listener_id ;
struct vlc_playlist_callbacks {int on_items_added; } ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
struct callback_ctx {TYPE_3__ vec_items_added; } ;
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
 int callback_on_items_added ;
 int * vlc_playlist_AddListener (int *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ;
 int vlc_playlist_Append (int *,int **,int) ;
 int vlc_playlist_Count (int *) ;
 int vlc_playlist_Delete (int *) ;
 int * vlc_playlist_New (int *) ;
 int vlc_playlist_RemoveListener (int *,int *) ;
 int vlc_playlist_RequestInsert (int *,int,int **,int) ;

__attribute__((used)) static void
test_request_insert(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[5];
    CreateDummyMediaArray(media, 5);


    int ret = vlc_playlist_Append(playlist, media, 3);
    assert(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_items_added = callback_on_items_added,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            vlc_playlist_AddListener(playlist, &cbs, &ctx, 0);
    assert(listener);


    ret = vlc_playlist_RequestInsert(playlist, 10, &media[3], 2);
    assert(ret == VLC_SUCCESS);

    assert(vlc_playlist_Count(playlist) == 5);

    EXPECT_AT(0, 0);
    EXPECT_AT(1, 1);
    EXPECT_AT(2, 2);
    EXPECT_AT(3, 3);
    EXPECT_AT(4, 4);

    assert(ctx.vec_items_added.size == 1);
    assert(ctx.vec_items_added.data[0].index == 3);
    assert(ctx.vec_items_added.data[0].count == 2);
    assert(ctx.vec_items_added.data[0].state.playlist_size == 5);

    callback_ctx_destroy(&ctx);
    vlc_playlist_RemoveListener(playlist, listener);
    DestroyMediaArray(media, 5);
    vlc_playlist_Delete(playlist);
}
