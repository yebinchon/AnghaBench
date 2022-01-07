
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int libvlc_int_t ;


 int VLC_OBJECT (int *) ;
 int * libvlc_GetMainPlaylist (int *) ;
 int var_InheritBool (int ,char*) ;
 scalar_t__ vlc_playlist_Count (int *) ;
 scalar_t__ vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_GoTo (int *,int ) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Start (int *) ;
 int vlc_playlist_Unlock (int *) ;

void libvlc_InternalPlay(libvlc_int_t *libvlc)
{
    if (!var_InheritBool(VLC_OBJECT(libvlc), "playlist-autostart"))
        return;
    vlc_playlist_t *playlist = libvlc_GetMainPlaylist(libvlc);
    if (!playlist)
        return;
    vlc_playlist_Lock(playlist);
    if (vlc_playlist_Count(playlist) > 0)
    {
        if (vlc_playlist_GetCurrentIndex(playlist) < 0)
            vlc_playlist_GoTo(playlist, 0);
        vlc_playlist_Start(playlist);
    }
    vlc_playlist_Unlock(playlist);
}
