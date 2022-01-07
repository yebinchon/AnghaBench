
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_3__ {int lock; int * main_playlist; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;


 int PlaylistConfigureFromVariables (int *,int ) ;
 int VLC_OBJECT (int *) ;
 TYPE_1__* libvlc_priv (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int * vlc_playlist_New (int ) ;

__attribute__((used)) static vlc_playlist_t *
libvlc_GetMainPlaylist(libvlc_int_t *libvlc)
{
    libvlc_priv_t *priv = libvlc_priv(libvlc);

    vlc_mutex_lock(&priv->lock);
    vlc_playlist_t *playlist = priv->main_playlist;
    if (priv->main_playlist == ((void*)0))
    {
        playlist = priv->main_playlist = vlc_playlist_New(VLC_OBJECT(libvlc));
        if (playlist)
            PlaylistConfigureFromVariables(playlist, VLC_OBJECT(libvlc));
    }
    vlc_mutex_unlock(&priv->lock);

    return playlist;
}
