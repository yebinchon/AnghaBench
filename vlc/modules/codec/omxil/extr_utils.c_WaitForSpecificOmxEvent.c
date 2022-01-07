
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;
typedef int OmxEventQueue ;
typedef int OMX_U32 ;
typedef int OMX_PTR ;
typedef scalar_t__ OMX_EVENTTYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;


 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_ErrorTimeout ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 scalar_t__ WaitForOmxEvent (int *,scalar_t__*,int *,int *,int *) ;
 scalar_t__ vlc_tick_now () ;

OMX_ERRORTYPE WaitForSpecificOmxEvent(OmxEventQueue *queue,
    OMX_EVENTTYPE specific_event, OMX_U32 *data_1, OMX_U32 *data_2,
    OMX_PTR *event_data)
{
    OMX_ERRORTYPE status;
    OMX_EVENTTYPE event;
    vlc_tick_t before = vlc_tick_now();

    while(1)
    {
        status = WaitForOmxEvent(queue, &event, data_1, data_2, event_data);
        if(status != OMX_ErrorNone) return status;

        if(event == specific_event) break;
        if(vlc_tick_now() - before > VLC_TICK_FROM_SEC(1)) return OMX_ErrorTimeout;
    }

    return OMX_ErrorNone;
}
