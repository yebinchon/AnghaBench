
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int block_t ;
struct TYPE_4__ {int b_playing; int lock; int cond; int p_dsbuffer; } ;
typedef TYPE_1__ aout_stream_sys_t ;
typedef scalar_t__ HRESULT ;


 int DSBPLAY_LOOPING ;
 scalar_t__ DSERR_BUFFERLOST ;
 scalar_t__ DS_OK ;
 scalar_t__ FillBuffer (int *,TYPE_1__*,int *) ;
 scalar_t__ IDirectSoundBuffer_Play (int ,int ,int ,int ) ;
 int IDirectSoundBuffer_Restore (int ) ;
 int msg_Err (int *,char*,scalar_t__) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static HRESULT Play( vlc_object_t *obj, aout_stream_sys_t *sys,
                     block_t *p_buffer )
{
    HRESULT dsresult;
    dsresult = FillBuffer( obj, sys, p_buffer );
    if( dsresult != DS_OK )
        return dsresult;


    dsresult = IDirectSoundBuffer_Play( sys->p_dsbuffer, 0, 0,
                                        DSBPLAY_LOOPING );
    if( dsresult == DSERR_BUFFERLOST )
    {
        IDirectSoundBuffer_Restore( sys->p_dsbuffer );
        dsresult = IDirectSoundBuffer_Play( sys->p_dsbuffer,
                                            0, 0, DSBPLAY_LOOPING );
    }
    if( dsresult != DS_OK )
        msg_Err( obj, "cannot start playing buffer: (hr=0x%lX)", dsresult );
    else
    {
        vlc_mutex_lock( &sys->lock );
        sys->b_playing = 1;
        vlc_cond_signal(&sys->cond);
        vlc_mutex_unlock( &sys->lock );

    }
    return dsresult;
}
