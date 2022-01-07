
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int input_item_t ;


 int CreateDummyMediaArray (int **,int) ;
 int DestroyMediaArray (int **,int) ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int vlc_playlist_Append (int *,int **,int) ;
 int vlc_playlist_Delete (int *) ;
 int * vlc_playlist_Get (int *,int) ;
 int vlc_playlist_IndexOf (int *,int *) ;
 int vlc_playlist_IndexOfMedia (int *,int *) ;
 int * vlc_playlist_New (int *) ;
 int vlc_playlist_RemoveOne (int *,int) ;
 int vlc_playlist_item_Hold (int *) ;
 int vlc_playlist_item_Release (int *) ;

__attribute__((used)) static void
test_index_of(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[10];
    CreateDummyMediaArray(media, 10);


    int ret = vlc_playlist_Append(playlist, media, 9);
    assert(ret == VLC_SUCCESS);

    assert(vlc_playlist_IndexOfMedia(playlist, media[4]) == 4);

    assert(vlc_playlist_IndexOfMedia(playlist, media[9]) == -1);

    vlc_playlist_item_t *item = vlc_playlist_Get(playlist, 4);
    assert(vlc_playlist_IndexOf(playlist, item) == 4);

    vlc_playlist_item_Hold(item);
    vlc_playlist_RemoveOne(playlist, 4);
    assert(vlc_playlist_IndexOf(playlist, item) == -1);
    vlc_playlist_item_Release(item);

    DestroyMediaArray(media, 10);
    vlc_playlist_Delete(playlist);
}
