
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_mutex_t ;
struct TYPE_4__ {int ref_count; int p_libvlc_int; int instance_lock; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int assert (int) ;
 int free (TYPE_1__*) ;
 int libvlc_InternalCleanup (int ) ;
 int libvlc_InternalDestroy (int ) ;
 int libvlc_Quit (int ) ;
 int libvlc_threads_deinit () ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void libvlc_release( libvlc_instance_t *p_instance )
{
    vlc_mutex_t *lock = &p_instance->instance_lock;
    int refs;

    vlc_mutex_lock( lock );
    assert( p_instance->ref_count > 0 );
    refs = --p_instance->ref_count;
    vlc_mutex_unlock( lock );

    if( refs == 0 )
    {
        vlc_mutex_destroy( lock );
        libvlc_Quit( p_instance->p_libvlc_int );
        libvlc_InternalCleanup( p_instance->p_libvlc_int );
        libvlc_InternalDestroy( p_instance->p_libvlc_int );
        free( p_instance );
        libvlc_threads_deinit ();
    }
}
