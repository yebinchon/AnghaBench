
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psz_names ;
typedef size_t OMX_COMMANDTYPE ;



const char *CommandToString(OMX_COMMANDTYPE command)
{
    static const char *psz_names[] = {
        "OMX_CommandStateSet", "OMX_CommandFlush", "OMX_CommandPortDisable",
        "OMX_CommandPortEnable", "OMX_CommandMarkBuffer",
        "OMX_Command unknown"
    };

    if((unsigned int)command > sizeof(psz_names)/sizeof(char*)-1)
        command = (OMX_COMMANDTYPE)(sizeof(psz_names)/sizeof(char*)-1);
    return psz_names[command];
}
