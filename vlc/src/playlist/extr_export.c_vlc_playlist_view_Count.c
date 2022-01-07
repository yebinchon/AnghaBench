
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_playlist_view {int playlist; } ;


 size_t vlc_playlist_Count (int ) ;

size_t
vlc_playlist_view_Count(struct vlc_playlist_view *view)
{
    return vlc_playlist_Count(view->playlist);
}
