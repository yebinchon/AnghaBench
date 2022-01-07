
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_6__ {int * playlist; } ;


 int msg_print (TYPE_2__*,char*) ;
 int print_playlist (TYPE_2__*,int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static void PlaylistList(intf_thread_t *intf)
{
    vlc_playlist_t *playlist = intf->p_sys->playlist;

    msg_print(intf, "+----[ Playlist ]");
    vlc_playlist_Lock(playlist);
    print_playlist(intf, playlist);
    vlc_playlist_Unlock(playlist);
    msg_print(intf, "+----[ End of playlist ]");
}
