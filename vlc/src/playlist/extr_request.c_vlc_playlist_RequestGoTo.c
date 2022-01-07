
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;


 int vlc_playlist_AssertLocked (int *) ;
 int vlc_playlist_FindRealIndex (int *,int *,int) ;
 int vlc_playlist_GoTo (int *,int) ;

int
vlc_playlist_RequestGoTo(vlc_playlist_t *playlist, vlc_playlist_item_t *item,
                         ssize_t index_hint)
{
    vlc_playlist_AssertLocked(playlist);
    ssize_t real_index = item
                       ? vlc_playlist_FindRealIndex(playlist, item, index_hint)
                       : -1;
    return vlc_playlist_GoTo(playlist, real_index);
}
