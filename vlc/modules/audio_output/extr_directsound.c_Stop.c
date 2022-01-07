
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_playing; int * p_dsobject; int * p_dsbuffer; int * p_notify; int lock; int cond; int eraser_thread; } ;
typedef TYPE_1__ aout_stream_sys_t ;
typedef int HRESULT ;


 int DS_OK ;
 int IDirectSoundBuffer_Release (int *) ;
 int IDirectSoundBuffer_Stop (int *) ;
 int IDirectSoundNotify_Release (int *) ;
 int IDirectSound_Release (int *) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static HRESULT Stop( aout_stream_sys_t *p_sys )
{
    vlc_mutex_lock( &p_sys->lock );
    p_sys->b_playing = 1;
    vlc_cond_signal( &p_sys->cond );
    vlc_mutex_unlock( &p_sys->lock );
    vlc_cancel( p_sys->eraser_thread );
    vlc_join( p_sys->eraser_thread, ((void*)0) );
    vlc_cond_destroy( &p_sys->cond );
    vlc_mutex_destroy( &p_sys->lock );

    if( p_sys->p_notify != ((void*)0) )
    {
        IDirectSoundNotify_Release(p_sys->p_notify );
        p_sys->p_notify = ((void*)0);
    }
    if( p_sys->p_dsbuffer != ((void*)0) )
    {
        IDirectSoundBuffer_Stop( p_sys->p_dsbuffer );
        IDirectSoundBuffer_Release( p_sys->p_dsbuffer );
        p_sys->p_dsbuffer = ((void*)0);
    }
    if( p_sys->p_dsobject != ((void*)0) )
    {
        IDirectSound_Release( p_sys->p_dsobject );
        p_sys->p_dsobject = ((void*)0);
    }
    return DS_OK;
}
