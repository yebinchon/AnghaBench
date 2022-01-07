
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERROR_ENVVAR_NOT_FOUND ;
 scalar_t__ GetEnvironmentVariableA (char*,int *,int ) ;
 int SetEnvironmentVariableA (char*,char*) ;

void silence_debug_output(void)
{
    if (GetEnvironmentVariableA("SHIM_DEBUG_LEVEL", ((void*)0), 0) == ERROR_ENVVAR_NOT_FOUND)
        SetEnvironmentVariableA("SHIM_DEBUG_LEVEL", "0");
    if (GetEnvironmentVariableA("SHIMENG_DEBUG_LEVEL", ((void*)0), 0) == ERROR_ENVVAR_NOT_FOUND)
        SetEnvironmentVariableA("SHIMENG_DEBUG_LEVEL", "0");
}
