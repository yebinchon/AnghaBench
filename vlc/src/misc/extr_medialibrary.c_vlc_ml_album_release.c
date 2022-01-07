
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_ml_album_t ;


 int free (int *) ;
 int vlc_ml_album_release_inner (int *) ;

void vlc_ml_album_release( vlc_ml_album_t* p_album )
{
    if ( p_album == ((void*)0) )
        return;
    vlc_ml_album_release_inner( p_album );
    free( p_album );
}
