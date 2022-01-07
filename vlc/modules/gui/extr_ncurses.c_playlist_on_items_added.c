
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
struct TYPE_2__ {int need_update; } ;
typedef TYPE_1__ intf_sys_t ;


 int VLC_UNUSED (size_t) ;

__attribute__((used)) static void
playlist_on_items_added(vlc_playlist_t *playlist,
                        size_t index,
                        vlc_playlist_item_t *const items[], size_t count,
                        void *userdata)
{
    VLC_UNUSED(playlist);
    VLC_UNUSED(index); VLC_UNUSED(items); VLC_UNUSED(count);

    intf_sys_t *sys = (intf_sys_t *)userdata;
    sys->need_update = 1;
}
