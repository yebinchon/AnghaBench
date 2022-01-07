
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ i_last_read; scalar_t__ i_data; int i_bytes_per_sample; int i_rate; int p_dsbuffer; } ;
typedef TYPE_1__ aout_stream_sys_t ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int DSBSTATUS_PLAYING ;
 scalar_t__ DSERR_GENERIC ;
 scalar_t__ DSERR_INVALIDCALL ;
 scalar_t__ DS_BUF_SIZE ;
 scalar_t__ DS_OK ;
 int Flush (TYPE_1__*) ;
 scalar_t__ IDirectSoundBuffer_GetCurrentPosition (int ,int*,int *) ;
 scalar_t__ IDirectSoundBuffer_GetStatus (int ,int*) ;
 int vlc_tick_from_samples (int,int ) ;

__attribute__((used)) static HRESULT TimeGet( aout_stream_sys_t *sys, vlc_tick_t *delay )
{
    DWORD read, status;
    HRESULT hr;
    ssize_t size;

    hr = IDirectSoundBuffer_GetStatus( sys->p_dsbuffer, &status );
    if( hr != DS_OK )
        return hr;
    if( !(status & DSBSTATUS_PLAYING) )
        return DSERR_INVALIDCALL ;

    hr = IDirectSoundBuffer_GetCurrentPosition( sys->p_dsbuffer, &read, ((void*)0) );
    if( hr != DS_OK )
        return hr;

    size = (ssize_t)read - sys->i_last_read;



    if( size == 0 )
        return DSERR_GENERIC ;
    else if( size < 0 )
      size += DS_BUF_SIZE;

    sys->i_data -= size;
    sys->i_last_read = read;

    if( sys->i_data < 0 )

        Flush(sys);

    *delay = vlc_tick_from_samples( sys->i_data / sys->i_bytes_per_sample, sys->i_rate );

    return DS_OK;
}
