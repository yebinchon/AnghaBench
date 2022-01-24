#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  audio_sample_format_t ;
struct TYPE_15__ {int /*<<< orphan*/  stop; int /*<<< orphan*/  flush; int /*<<< orphan*/  pause; int /*<<< orphan*/  play; int /*<<< orphan*/  time_get; TYPE_3__* sys; } ;
typedef  TYPE_2__ aout_stream_t ;
struct TYPE_16__ {void* p_dsobject; } ;
typedef  TYPE_3__ aout_stream_sys_t ;
struct TYPE_18__ {int cbDirectXAudioActivationParams; int /*<<< orphan*/  dwAudioStreamFlags; int /*<<< orphan*/  const guidAudioSession; } ;
struct TYPE_14__ {int cbSize; int /*<<< orphan*/ * pBlobData; } ;
struct TYPE_17__ {TYPE_1__ blob; int /*<<< orphan*/  vt; } ;
typedef  TYPE_4__ PROPVARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_5__ DIRECTX_AUDIO_ACTIVATION_PARAMS ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  StreamFlush ; 
 int /*<<< orphan*/  StreamPause ; 
 int /*<<< orphan*/  StreamPlay ; 
 int /*<<< orphan*/  StreamStop ; 
 int /*<<< orphan*/  StreamTimeGet ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  VT_BLOB ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*,void**) ; 
 TYPE_3__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8( aout_stream_t *s,
                            audio_sample_format_t *restrict fmt,
                            const GUID *sid )
{
    aout_stream_sys_t *sys = FUNC5( 1, sizeof( *sys ) );
    if( FUNC7(sys == NULL) )
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

        FUNC1( &prop );
        prop.vt = VT_BLOB;
        prop.blob.cbSize = sizeof( params );
        prop.blob.pBlobData = (BYTE *)&params;

        hr = FUNC4( s, &IID_IDirectSound, &prop, &pv );
    }
    else
        hr = FUNC4( s, &IID_IDirectSound, NULL, &pv );
    if( FUNC0(hr) )
        goto error;

    sys->p_dsobject = pv;

    hr = FUNC2( FUNC3(s), sys, fmt );
    if( FUNC0(hr) )
        goto error;

    s->sys = sys;
    s->time_get = StreamTimeGet;
    s->play = StreamPlay;
    s->pause = StreamPause;
    s->flush = StreamFlush;
    s->stop = StreamStop;
    return S_OK;
error:
    FUNC6( sys );
    return hr;
}