
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;


 size_t vlc_playlist_Count (int *) ;
 int * vlc_playlist_Get (int *,int) ;
 int vlc_playlist_IndexOf (int *,int *) ;

__attribute__((used)) static ssize_t
vlc_playlist_FindRealIndex(vlc_playlist_t *playlist, vlc_playlist_item_t *item,
                           ssize_t index_hint)
{
    if (index_hint != -1 && (size_t) index_hint < vlc_playlist_Count(playlist))
    {
        if (item == vlc_playlist_Get(playlist, index_hint))

            return index_hint;
    }


    return vlc_playlist_IndexOf(playlist, item);
}
