
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i_count; } ;
struct TYPE_6__ {int b_read_only; int i_refcount; int * p_internal_md; int * p_md; TYPE_2__ items; int refcount_lock; int object_lock; int event_manager; int * p_libvlc_instance; } ;
typedef TYPE_1__ libvlc_media_list_t ;
typedef int libvlc_instance_t ;


 int assert (int) ;
 int libvlc_event_manager_init (int *,TYPE_1__*) ;
 int libvlc_printerr (char*) ;
 int libvlc_retain (int *) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_array_init (TYPE_2__*) ;
 int vlc_mutex_init (int *) ;

libvlc_media_list_t *
libvlc_media_list_new( libvlc_instance_t * p_inst )
{
    libvlc_media_list_t * p_mlist;

    p_mlist = malloc(sizeof(libvlc_media_list_t));
    if( unlikely(p_mlist == ((void*)0)) )
    {
        libvlc_printerr( "Not enough memory" );
        return ((void*)0);
    }

    p_mlist->p_libvlc_instance = p_inst;
    libvlc_event_manager_init( &p_mlist->event_manager, p_mlist );
    p_mlist->b_read_only = 0;

    vlc_mutex_init( &p_mlist->object_lock );
    vlc_mutex_init( &p_mlist->refcount_lock );

    vlc_array_init( &p_mlist->items );
    assert( p_mlist->items.i_count == 0 );
    p_mlist->i_refcount = 1;
    p_mlist->p_md = ((void*)0);
    p_mlist->p_internal_md = ((void*)0);

    libvlc_retain( p_inst );
    return p_mlist;
}
