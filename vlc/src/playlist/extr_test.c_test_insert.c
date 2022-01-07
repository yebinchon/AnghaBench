
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
 int vlc_playlist_Insert (int *,int,int **,int) ;
 int vlc_playlist_InsertOne (int *,int,int *) ;
 int * vlc_playlist_New (int *) ;

__attribute__((used)) static void
test_insert(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[15];
    CreateDummyMediaArray(media, 15);


    int ret = vlc_playlist_Append(playlist, media, 5);
    assert(ret == VLC_SUCCESS);


    for (int i = 0; i < 5; ++i)
    {
        ret = vlc_playlist_InsertOne(playlist, 2, media[i + 5]);
        assert(ret == VLC_SUCCESS);
    }


    ret = vlc_playlist_Insert(playlist, 6, &media[10], 5);
    assert(ret == VLC_SUCCESS);

    assert(vlc_playlist_Count(playlist) == 15);

    EXPECT_AT(0, 0);
    EXPECT_AT(1, 1);

    EXPECT_AT(2, 9);
    EXPECT_AT(3, 8);
    EXPECT_AT(4, 7);
    EXPECT_AT(5, 6);

    EXPECT_AT(6, 10);
    EXPECT_AT(7, 11);
    EXPECT_AT(8, 12);
    EXPECT_AT(9, 13);
    EXPECT_AT(10, 14);

    EXPECT_AT(11, 5);
    EXPECT_AT(12, 2);
    EXPECT_AT(13, 3);
    EXPECT_AT(14, 4);

    DestroyMediaArray(media, 15);
    vlc_playlist_Delete(playlist);
}
