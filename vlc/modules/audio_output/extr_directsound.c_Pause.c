
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_playing; int lock; int cond; int p_dsbuffer; } ;
typedef TYPE_1__ aout_stream_sys_t ;
typedef scalar_t__ HRESULT ;


 int DSBPLAY_LOOPING ;
 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundBuffer_Play (int ,int ,int ,int ) ;
 scalar_t__ IDirectSoundBuffer_Stop (int ) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static HRESULT Pause( aout_stream_sys_t *sys, bool pause )
{
    HRESULT hr;

    if( pause )
        hr = IDirectSoundBuffer_Stop( sys->p_dsbuffer );
    else
        hr = IDirectSoundBuffer_Play( sys->p_dsbuffer, 0, 0, DSBPLAY_LOOPING );
    if( hr == DS_OK )
    {
        vlc_mutex_lock( &sys->lock );
        sys->b_playing = !pause;
        if( sys->b_playing )
            vlc_cond_signal( &sys->cond );
        vlc_mutex_unlock( &sys->lock );
    }
    return hr;
}
