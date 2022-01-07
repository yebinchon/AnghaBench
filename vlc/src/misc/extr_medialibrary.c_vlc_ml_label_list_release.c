
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t i_nb_items; TYPE_1__* p_items; } ;
typedef TYPE_2__ vlc_ml_label_list_t ;
struct TYPE_5__ {TYPE_2__* psz_name; } ;


 int free (TYPE_2__*) ;

void vlc_ml_label_list_release( vlc_ml_label_list_t* p_list )
{
    if ( p_list == ((void*)0) )
        return;
    for ( size_t i = 0; i < p_list->i_nb_items; ++i )
        free( p_list->p_items[i].psz_name );
    free( p_list );
}
