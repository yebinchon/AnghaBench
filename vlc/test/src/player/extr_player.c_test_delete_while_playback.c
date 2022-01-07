
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_object_t ;
struct media_params {int dummy; } ;
typedef int input_item_t ;


 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 int VLC_PLAYER_LOCK_NORMAL ;
 int VLC_SUCCESS ;
 int VLC_TICK_FROM_SEC (int) ;
 int assert (int) ;
 int * create_mock_media (char*,struct media_params*) ;
 int input_item_Release (int *) ;
 int test_log (char*,int) ;
 int vlc_player_Delete (int *) ;
 int vlc_player_Lock (int *) ;
 int * vlc_player_New (int *,int ,int *,int *) ;
 int vlc_player_SetCurrentMedia (int *,int *) ;
 int vlc_player_Start (int *) ;
 int vlc_player_Unlock (int *) ;

__attribute__((used)) static void
test_delete_while_playback(vlc_object_t *obj, bool start)
{
    test_log("delete_while_playback (start: %d)\n", start);
    vlc_player_t *player = vlc_player_New(obj, VLC_PLAYER_LOCK_NORMAL,
                                          ((void*)0), ((void*)0));

    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_SEC(10));
    input_item_t *media = create_mock_media("media1", &params);
    assert(media);

    vlc_player_Lock(player);
    int ret = vlc_player_SetCurrentMedia(player, media);
    assert(ret == VLC_SUCCESS);
    input_item_Release(media);

    if (start)
    {
        ret = vlc_player_Start(player);
        assert(ret == VLC_SUCCESS);
    }

    vlc_player_Unlock(player);

    vlc_player_Delete(player);
}
