
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;


 int PlaylistDoVoid (int *,int ) ;
 int vlc_playlist_Prev ;

__attribute__((used)) static void PlaylistPrev(intf_thread_t *intf)
{
    PlaylistDoVoid(intf, vlc_playlist_Prev);
}
