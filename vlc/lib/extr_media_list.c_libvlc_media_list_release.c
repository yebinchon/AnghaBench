
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_4__ {scalar_t__ i_refcount; int p_libvlc_instance; int items; int refcount_lock; int object_lock; int * p_md; int event_manager; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int free (TYPE_1__*) ;
 int libvlc_event_manager_destroy (int *) ;
 int libvlc_media_release (int *) ;
 int libvlc_release (int ) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 int * vlc_array_item_at_index (int *,size_t) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void libvlc_media_list_release( libvlc_media_list_t * p_mlist )
{
    vlc_mutex_lock( &p_mlist->refcount_lock );
    p_mlist->i_refcount--;
    if( p_mlist->i_refcount > 0 )
    {
        vlc_mutex_unlock( &p_mlist->refcount_lock );
        return;
    }
    vlc_mutex_unlock( &p_mlist->refcount_lock );



    libvlc_event_manager_destroy( &p_mlist->event_manager );
    libvlc_media_release( p_mlist->p_md );

    for( size_t i = 0; i < vlc_array_count( &p_mlist->items ); i++ )
    {
        libvlc_media_t* p_md = vlc_array_item_at_index( &p_mlist->items, i );
        libvlc_media_release( p_md );
    }

    vlc_mutex_destroy( &p_mlist->object_lock );
    vlc_mutex_destroy( &p_mlist->refcount_lock );
    vlc_array_clear( &p_mlist->items );

    libvlc_release( p_mlist->p_libvlc_instance );
    free( p_mlist );
}
