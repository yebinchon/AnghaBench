
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;


 int PlaylistDoStop (int *) ;
 int vlc_playlist_Clear (int *) ;

__attribute__((used)) static int PlaylistDoClear(vlc_playlist_t *playlist)
{
    PlaylistDoStop(playlist);
    vlc_playlist_Clear(playlist);
    return 0;
}
