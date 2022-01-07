
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_ml_artist_t ;


 int free (int *) ;
 int vlc_ml_artist_release_inner (int *) ;

void vlc_ml_artist_release( vlc_ml_artist_t* p_artist )
{
    if ( p_artist == ((void*)0) )
        return;
    vlc_ml_artist_release_inner( p_artist );
    free( p_artist );
}
