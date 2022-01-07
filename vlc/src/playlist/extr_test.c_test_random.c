
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_listener_id ;
struct vlc_playlist_callbacks {int on_has_next_changed; int on_has_prev_changed; int on_current_index_changed; } ;
struct callback_ctx {int dummy; } ;
typedef int ssize_t ;
typedef int selected ;
typedef int input_item_t ;


 struct callback_ctx CALLBACK_CTX_INITIALIZER ;
 int CreateDummyMediaArray (int **,int) ;
 int DestroyMediaArray (int **,int) ;
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int callback_ctx_destroy (struct callback_ctx*) ;
 int callback_on_current_index_changed ;
 int callback_on_has_next_changed ;
 int callback_on_has_prev_changed ;
 int memset (int*,int ,int) ;
 int * vlc_playlist_AddListener (int *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ;
 int vlc_playlist_Append (int *,int **,int) ;
 int vlc_playlist_AppendOne (int *,int *) ;
 int vlc_playlist_Delete (int *) ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_HasNext (int *) ;
 int vlc_playlist_HasPrev (int *) ;
 int * vlc_playlist_New (int *) ;
 int vlc_playlist_Next (int *) ;
 int vlc_playlist_Prev (int *) ;
 int vlc_playlist_RemoveListener (int *,int *) ;
 int vlc_playlist_RemoveOne (int *,int) ;
 int vlc_playlist_SetPlaybackOrder (int *,int ) ;
 int vlc_playlist_SetPlaybackRepeat (int *,int ) ;

__attribute__((used)) static void
test_random(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[6];
    CreateDummyMediaArray(media, 6);


    int ret = vlc_playlist_Append(playlist, media, 5);
    assert(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_current_index_changed = callback_on_current_index_changed,
        .on_has_prev_changed = callback_on_has_prev_changed,
        .on_has_next_changed = callback_on_has_next_changed,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            vlc_playlist_AddListener(playlist, &cbs, &ctx, 0);
    assert(listener);

    assert(!vlc_playlist_HasPrev(playlist));
    assert(vlc_playlist_HasNext(playlist));

    for (int i = 0; i < 3; ++i)
    {
        assert(vlc_playlist_HasNext(playlist));
        ret = vlc_playlist_Next(playlist);
        assert(ret == VLC_SUCCESS);
    }

    assert(vlc_playlist_HasPrev(playlist));
    vlc_playlist_SetPlaybackOrder(playlist, VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM);


    assert(!vlc_playlist_HasPrev(playlist));

    bool selected[5] = {};
    for (int i = 0; i < 5; ++i)
    {
        assert(vlc_playlist_HasNext(playlist));
        ret = vlc_playlist_Next(playlist);
        assert(ret == VLC_SUCCESS);
        ssize_t index = vlc_playlist_GetCurrentIndex(playlist);
        assert(index != -1);
        assert(!selected[index]);
        selected[index] = 1;
    }

    assert(!vlc_playlist_HasNext(playlist));


    ret = vlc_playlist_AppendOne(playlist, media[5]);
    assert(ret == VLC_SUCCESS);
    assert(vlc_playlist_HasNext(playlist));

    ret = vlc_playlist_Next(playlist);
    assert(ret == VLC_SUCCESS);

    assert(vlc_playlist_GetCurrentIndex(playlist) == 5);
    assert(!vlc_playlist_HasNext(playlist));

    vlc_playlist_RemoveOne(playlist, 5);


    vlc_playlist_SetPlaybackRepeat(playlist, VLC_PLAYLIST_PLAYBACK_REPEAT_ALL);


    assert(vlc_playlist_HasNext(playlist));


    memset(selected, 0, sizeof(selected));
    for (int i = 0; i < 5; ++i)
    {
        assert(vlc_playlist_HasNext(playlist));
        ret = vlc_playlist_Next(playlist);
        assert(ret == VLC_SUCCESS);
        ssize_t index = vlc_playlist_GetCurrentIndex(playlist);
        assert(index != -1);
        assert(!selected[index]);
        selected[index] = 1;
    }


    assert(vlc_playlist_HasNext(playlist));


    for (int i = 0; i < 3; ++i)
    {
        assert(vlc_playlist_HasNext(playlist));
        ret = vlc_playlist_Next(playlist);
        assert(ret == VLC_SUCCESS);
    }

    memset(selected, 0, sizeof(selected));
    int actual[5];

    ssize_t current = vlc_playlist_GetCurrentIndex(playlist);
    assert(current != -1);
    actual[4] = current;

    for (int i = 3; i >= 0; --i)
    {
        assert(vlc_playlist_HasPrev(playlist));
        ret = vlc_playlist_Prev(playlist);
        assert(ret == VLC_SUCCESS);
        ssize_t index = vlc_playlist_GetCurrentIndex(playlist);
        assert(index != -1);
        actual[i] = index;
        assert(!selected[index]);
        selected[index] = 1;
    }


    assert(!vlc_playlist_HasPrev(playlist));


    for (int i = 1; i < 5; ++i)
    {
        assert(vlc_playlist_HasNext(playlist));
        ret = vlc_playlist_Next(playlist);
        assert(ret == VLC_SUCCESS);
        ssize_t index = vlc_playlist_GetCurrentIndex(playlist);
        assert(index != -1);
        assert(index == actual[i]);
    }


    assert(vlc_playlist_HasNext(playlist));

    callback_ctx_destroy(&ctx);
    vlc_playlist_RemoveListener(playlist, listener);
    DestroyMediaArray(media, 6);
    vlc_playlist_Delete(playlist);
}
