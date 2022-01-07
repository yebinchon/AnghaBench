
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PlatformId () ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 scalar_t__ VER_PLATFORM_WIN32_WINDOWS ;
 scalar_t__ g_PlatformId ;

char *
default_shell(void)
{
    char* psz = ((void*)0);

    PlatformId();

    if (g_PlatformId == VER_PLATFORM_WIN32_NT)
 psz = "cmd.exe";
    else if (g_PlatformId == VER_PLATFORM_WIN32_WINDOWS)
 psz = "command.com";

    return psz;
}
