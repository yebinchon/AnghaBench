
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_playing; int lock; int i_write; int p_dsbuffer; int i_last_read; scalar_t__ i_data; } ;
typedef TYPE_1__ aout_stream_sys_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DS_OK ;
 int IDirectSoundBuffer_SetCurrentPosition (int ,int ) ;
 scalar_t__ IDirectSoundBuffer_Stop (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static HRESULT Flush( aout_stream_sys_t *sys )
{
    HRESULT ret = IDirectSoundBuffer_Stop( sys->p_dsbuffer );
    if( ret == DS_OK )
    {
        vlc_mutex_lock(&sys->lock);
        sys->i_data = 0;
        sys->i_last_read = sys->i_write;
        IDirectSoundBuffer_SetCurrentPosition( sys->p_dsbuffer, sys->i_write);
        sys->b_playing = 0;
        vlc_mutex_unlock(&sys->lock);
    }
    return ret;
}
