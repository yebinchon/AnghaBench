
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int input_item_t ;


 int CreateDummyMediaArray (int **,int) ;
 int DestroyMediaArray (int **,int) ;
 int EXPECT_AT (int,int) ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int vlc_playlist_Append (int *,int **,int) ;
 int vlc_playlist_Count (int *) ;
 int vlc_playlist_Delete (int *) ;
 int * vlc_playlist_New (int *) ;
 int vlc_playlist_Remove (int *,int,int) ;
 int vlc_playlist_RemoveOne (int *,int) ;

__attribute__((used)) static void
test_remove(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[10];
    CreateDummyMediaArray(media, 10);


    int ret = vlc_playlist_Append(playlist, media, 10);
    assert(ret == VLC_SUCCESS);


    for (int i = 0; i < 3; ++i)
        vlc_playlist_RemoveOne(playlist, 2);


    vlc_playlist_Remove(playlist, 3, 2);

    assert(vlc_playlist_Count(playlist) == 5);
    EXPECT_AT(0, 0);
    EXPECT_AT(1, 1);
    EXPECT_AT(2, 5);
    EXPECT_AT(3, 8);
    EXPECT_AT(4, 9);

    DestroyMediaArray(media, 10);
    vlc_playlist_Delete(playlist);
}
