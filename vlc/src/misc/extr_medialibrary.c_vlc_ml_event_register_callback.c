
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_ml_event_callback_t {int node; void* p_data; int pf_cb; } ;
typedef struct vlc_ml_event_callback_t vlc_ml_event_callback_t ;
typedef int vlc_ml_callback_t ;
struct TYPE_3__ {int lock; int cbs; } ;
typedef TYPE_1__ vlc_medialibrary_t ;


 struct vlc_ml_event_callback_t* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_list_append (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_ml_event_callback_t*
vlc_ml_event_register_callback( vlc_medialibrary_t* p_ml, vlc_ml_callback_t cb,
                                void* p_data )
{
    struct vlc_ml_event_callback_t* p_cb = malloc( sizeof( *p_cb ) );
    if ( unlikely( p_cb == ((void*)0) ) )
        return ((void*)0);
    p_cb->pf_cb = cb;
    p_cb->p_data = p_data;
    vlc_mutex_lock( &p_ml->lock );
    vlc_list_append( &p_cb->node, &p_ml->cbs );
    vlc_mutex_unlock( &p_ml->lock );
    return p_cb;
}
