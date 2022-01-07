
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_ml_playlist_t ;


 int free (int *) ;
 int vlc_ml_playlist_release_inner (int *) ;

void vlc_ml_playlist_release( vlc_ml_playlist_t* p_playlist )
{
    if ( p_playlist == ((void*)0) )
        return;
    vlc_ml_playlist_release_inner( p_playlist );
    free( p_playlist );
}
