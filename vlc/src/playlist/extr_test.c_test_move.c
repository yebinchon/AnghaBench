
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
 int vlc_playlist_Delete (int *) ;
 int vlc_playlist_Move (int *,int,int,int) ;
 int * vlc_playlist_New (int *) ;

__attribute__((used)) static void
test_move(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[10];
    CreateDummyMediaArray(media, 10);


    int ret = vlc_playlist_Append(playlist, media, 10);
    assert(ret == VLC_SUCCESS);


    vlc_playlist_Move(playlist, 3, 4, 5);

    EXPECT_AT(0, 0);
    EXPECT_AT(1, 1);
    EXPECT_AT(2, 2);
    EXPECT_AT(3, 7);
    EXPECT_AT(4, 8);
    EXPECT_AT(5, 3);
    EXPECT_AT(6, 4);
    EXPECT_AT(7, 5);
    EXPECT_AT(8, 6);
    EXPECT_AT(9, 9);


    vlc_playlist_Move(playlist, 5, 4, 3);

    EXPECT_AT(0, 0);
    EXPECT_AT(1, 1);
    EXPECT_AT(2, 2);
    EXPECT_AT(3, 3);
    EXPECT_AT(4, 4);
    EXPECT_AT(5, 5);
    EXPECT_AT(6, 6);
    EXPECT_AT(7, 7);
    EXPECT_AT(8, 8);
    EXPECT_AT(9, 9);

    DestroyMediaArray(media, 10);
    vlc_playlist_Delete(playlist);
}
