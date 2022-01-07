
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int intf_thread_t ;


 int assert (int *) ;
 int * libvlc_GetMainPlaylist (int ) ;
 int vlc_object_instance (int *) ;

vlc_playlist_t *
vlc_intf_GetMainPlaylist(intf_thread_t *intf)
{
    vlc_playlist_t *pl = libvlc_GetMainPlaylist(vlc_object_instance(intf));
    assert(pl);
    return pl;
}
