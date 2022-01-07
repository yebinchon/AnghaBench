
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int input_item_t ;


 int CreateDummyMediaArray (int **,int) ;
 int DestroyMediaArray (int **,int) ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int vlc_playlist_Append (int *,int **,int) ;
 int vlc_playlist_Clear (int *) ;
 int vlc_playlist_Count (int *) ;
 int vlc_playlist_Delete (int *) ;
 int * vlc_playlist_New (int *) ;

__attribute__((used)) static void
test_clear(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[10];
    CreateDummyMediaArray(media, 10);


    int ret = vlc_playlist_Append(playlist, media, 10);
    assert(ret == VLC_SUCCESS);

    assert(vlc_playlist_Count(playlist) == 10);
    vlc_playlist_Clear(playlist);
    assert(vlc_playlist_Count(playlist) == 0);

    DestroyMediaArray(media, 10);
    vlc_playlist_Delete(playlist);
}
