
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_item_t ;
struct vlc_playlist_view {int playlist; } ;


 int * vlc_playlist_Get (int ,size_t) ;

vlc_playlist_item_t *
vlc_playlist_view_Get(struct vlc_playlist_view *view, size_t index)
{
    return vlc_playlist_Get(view->playlist, index);
}
