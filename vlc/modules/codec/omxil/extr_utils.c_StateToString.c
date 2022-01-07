
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psz_names ;
typedef size_t OMX_STATETYPE ;



const char *StateToString(OMX_STATETYPE state)
{
    static const char *psz_names[] = {
        "OMX_StateInvalid", "OMX_StateLoaded", "OMX_StateIdle",
        "OMX_StateExecuting", "OMX_StatePause", "OMX_StateWaitForResources",
        "OMX_State unknown"
    };

    if((unsigned int)state > sizeof(psz_names)/sizeof(char*)-1)
        state = (OMX_STATETYPE)(sizeof(psz_names)/sizeof(char*)-1);
    return psz_names[state];
}
