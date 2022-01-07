
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_refcount; scalar_t__ p_library; scalar_t__ p_renderer; scalar_t__ p_track; int lock; } ;
typedef TYPE_1__ decoder_sys_t ;


 int ass_free_track (scalar_t__) ;
 int ass_library_done (scalar_t__) ;
 int ass_renderer_done (scalar_t__) ;
 int free (TYPE_1__*) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void DecSysRelease( decoder_sys_t *p_sys )
{

    vlc_mutex_lock( &p_sys->lock );
    p_sys->i_refcount--;
    if( p_sys->i_refcount > 0 )
    {
        vlc_mutex_unlock( &p_sys->lock );
        return;
    }
    vlc_mutex_unlock( &p_sys->lock );
    vlc_mutex_destroy( &p_sys->lock );

    if( p_sys->p_track )
        ass_free_track( p_sys->p_track );
    if( p_sys->p_renderer )
        ass_renderer_done( p_sys->p_renderer );
    if( p_sys->p_library )
        ass_library_done( p_sys->p_library );

    free( p_sys );
}
