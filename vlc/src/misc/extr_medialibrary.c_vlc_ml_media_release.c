
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_ml_media_t ;


 int free (int *) ;
 int vlc_ml_media_release_inner (int *) ;

void vlc_ml_media_release( vlc_ml_media_t* p_media )
{
    if ( p_media == ((void*)0) )
        return;
    vlc_ml_media_release_inner( p_media );
    free( p_media );
}
