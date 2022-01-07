
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
struct vlc_playlist_sort_criterion {int order; int key; } ;


 int VLC_PLAYLIST_SORT_KEY_ARTIST ;
 int VLC_PLAYLIST_SORT_ORDER_ASCENDING ;
 int vlc_playlist_Sort (int *,struct vlc_playlist_sort_criterion*,int) ;

__attribute__((used)) static int PlaylistDoSort(vlc_playlist_t *playlist)
{
    struct vlc_playlist_sort_criterion criteria =
    {
        .key = VLC_PLAYLIST_SORT_KEY_ARTIST,
        .order = VLC_PLAYLIST_SORT_ORDER_ASCENDING
    };

    return vlc_playlist_Sort(playlist, &criteria, 1);
}
