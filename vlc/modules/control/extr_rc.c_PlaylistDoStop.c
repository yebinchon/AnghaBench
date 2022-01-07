
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;


 int vlc_playlist_Stop (int *) ;

__attribute__((used)) static int PlaylistDoStop(vlc_playlist_t *playlist)
{
    vlc_playlist_Stop(playlist);
    return 0;
}
