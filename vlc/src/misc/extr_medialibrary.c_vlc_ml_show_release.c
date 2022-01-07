
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_ml_show_t ;


 int free (int *) ;
 int vlc_ml_show_release_inner (int *) ;

void vlc_ml_show_release( vlc_ml_show_t* p_show )
{
    if ( p_show == ((void*)0) )
        return;
    vlc_ml_show_release_inner( p_show );
    free( p_show );
}
