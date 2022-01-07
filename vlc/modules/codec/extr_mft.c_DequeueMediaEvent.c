
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int pending_input_events; int pending_output_events; int event_generator; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef scalar_t__ MediaEventType ;
typedef int IMFMediaEvent ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IMFMediaEventGenerator_GetEvent (int ,int ,int **) ;
 int IMFMediaEvent_GetType (int *,scalar_t__*) ;
 int IMFMediaEvent_Release (int *) ;
 int MF_EVENT_FLAG_NO_WAIT ;
 int S_OK ;
 scalar_t__ VLC_METransformHaveOutput ;
 scalar_t__ VLC_METransformNeedInput ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static HRESULT DequeueMediaEvent(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    IMFMediaEvent *event = ((void*)0);
    hr = IMFMediaEventGenerator_GetEvent(p_sys->event_generator, MF_EVENT_FLAG_NO_WAIT, &event);
    if (FAILED(hr))
        return hr;
    MediaEventType event_type;
    hr = IMFMediaEvent_GetType(event, &event_type);
    IMFMediaEvent_Release(event);
    if (FAILED(hr))
        return hr;

    if (event_type == VLC_METransformNeedInput)
        p_sys->pending_input_events += 1;
    else if (event_type == VLC_METransformHaveOutput)
        p_sys->pending_output_events += 1;
    else
        msg_Err(p_dec, "Unsupported asynchronous event.");

    return S_OK;
}
