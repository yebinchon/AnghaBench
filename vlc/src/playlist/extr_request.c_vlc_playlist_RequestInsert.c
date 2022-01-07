
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int input_item_t ;


 int vlc_playlist_AssertLocked (int *) ;
 size_t vlc_playlist_Count (int *) ;
 int vlc_playlist_Insert (int *,size_t,int * const*,size_t) ;

int
vlc_playlist_RequestInsert(vlc_playlist_t *playlist, size_t index,
                           input_item_t *const media[], size_t count)
{
    vlc_playlist_AssertLocked(playlist);

    size_t size = vlc_playlist_Count(playlist);
    if (index > size)
        index = size;

    return vlc_playlist_Insert(playlist, index, media, count);
}
