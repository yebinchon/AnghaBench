
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t i_nb_items; int * p_items; } ;
typedef TYPE_1__ vlc_ml_media_list_t ;


 int free (TYPE_1__*) ;
 int vlc_ml_media_release_inner (int *) ;

void vlc_ml_media_list_release( vlc_ml_media_list_t* p_list )
{
    if ( p_list == ((void*)0) )
        return;
    for ( size_t i = 0; i < p_list->i_nb_items; ++i )
        vlc_ml_media_release_inner( &p_list->p_items[i] );
    free( p_list );
}
