
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psz_names ;
typedef size_t OMX_EVENTTYPE ;



const char *EventToString(OMX_EVENTTYPE event)
{
    static const char *psz_names[] = {
        "OMX_EventCmdComplete", "OMX_EventError", "OMX_EventMark",
        "OMX_EventPortSettingsChanged", "OMX_EventBufferFlag",
        "OMX_EventResourcesAcquired", "OMX_EventComponentResumed",
        "OMX_EventDynamicResourcesAvailable", "OMX_EventPortFormatDetected",
        "OMX_Event unknown"
    };

    if((unsigned int)event > sizeof(psz_names)/sizeof(char*)-1)
        event = (OMX_EVENTTYPE)(sizeof(psz_names)/sizeof(char*)-1);
    return psz_names[event];
}
