
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int node; } ;
typedef TYPE_1__ vlc_ml_event_callback_t ;
struct TYPE_7__ {int lock; } ;
typedef TYPE_2__ vlc_medialibrary_t ;


 int free (TYPE_1__*) ;
 int vlc_list_remove (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_ml_event_unregister_callback( vlc_medialibrary_t* p_ml,
                                       vlc_ml_event_callback_t* p_cb )
{
    vlc_mutex_lock( &p_ml->lock );
    vlc_list_remove( &p_cb->node );
    vlc_mutex_unlock( &p_ml->lock );
    free( p_cb );
}
