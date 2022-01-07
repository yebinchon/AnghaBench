
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int params ;
typedef int audio_sample_format_t ;
struct TYPE_15__ {int stop; int flush; int pause; int play; int time_get; TYPE_3__* sys; } ;
typedef TYPE_2__ aout_stream_t ;
struct TYPE_16__ {void* p_dsobject; } ;
typedef TYPE_3__ aout_stream_sys_t ;
struct TYPE_18__ {int cbDirectXAudioActivationParams; int dwAudioStreamFlags; int const guidAudioSession; } ;
struct TYPE_14__ {int cbSize; int * pBlobData; } ;
struct TYPE_17__ {TYPE_1__ blob; int vt; } ;
typedef TYPE_4__ PROPVARIANT ;
typedef int HRESULT ;
typedef int GUID ;
typedef TYPE_5__ DIRECTX_AUDIO_ACTIVATION_PARAMS ;
typedef int BYTE ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IID_IDirectSound ;
 int PropVariantInit (TYPE_4__*) ;
 int S_OK ;
 int Start (int ,TYPE_3__*,int *) ;
 int StreamFlush ;
 int StreamPause ;
 int StreamPlay ;
 int StreamStop ;
 int StreamTimeGet ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VT_BLOB ;
 int aout_stream_Activate (TYPE_2__*,int *,TYPE_4__*,void**) ;
 TYPE_3__* calloc (int,int) ;
 int free (TYPE_3__*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static HRESULT StreamStart( aout_stream_t *s,
                            audio_sample_format_t *restrict fmt,
                            const GUID *sid )
{
    aout_stream_sys_t *sys = calloc( 1, sizeof( *sys ) );
    if( unlikely(sys == ((void*)0)) )
        return E_OUTOFMEMORY;

    void *pv;
    HRESULT hr;
    if( sid )
    {
        DIRECTX_AUDIO_ACTIVATION_PARAMS params = {
            .cbDirectXAudioActivationParams = sizeof( params ),
            .guidAudioSession = *sid,
            .dwAudioStreamFlags = 0,
        };
        PROPVARIANT prop;

        PropVariantInit( &prop );
        prop.vt = VT_BLOB;
        prop.blob.cbSize = sizeof( params );
        prop.blob.pBlobData = (BYTE *)&params;

        hr = aout_stream_Activate( s, &IID_IDirectSound, &prop, &pv );
    }
    else
        hr = aout_stream_Activate( s, &IID_IDirectSound, ((void*)0), &pv );
    if( FAILED(hr) )
        goto error;

    sys->p_dsobject = pv;

    hr = Start( VLC_OBJECT(s), sys, fmt );
    if( FAILED(hr) )
        goto error;

    s->sys = sys;
    s->time_get = StreamTimeGet;
    s->play = StreamPlay;
    s->pause = StreamPause;
    s->flush = StreamFlush;
    s->stop = StreamStop;
    return S_OK;
error:
    free( sys );
    return hr;
}
