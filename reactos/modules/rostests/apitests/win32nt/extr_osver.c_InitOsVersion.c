
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwOSVersionInfoSize; int dwMajorVersion; int dwMinorVersion; } ;
typedef int OSVERSIONINFOW ;
typedef int LPOSVERSIONINFOW ;
typedef int BOOL ;


 int FALSE ;
 int GetVersionExW (int ) ;
 int TRUE ;
 int g_OsIdx ;
 TYPE_1__ g_OsVer ;

BOOL InitOsVersion()
{
    g_OsVer.dwOSVersionInfoSize = sizeof(OSVERSIONINFOW);
    GetVersionExW((LPOSVERSIONINFOW)&g_OsVer);
    if (g_OsVer.dwMajorVersion == 4)
    {
        g_OsIdx = 0;
        return TRUE;
    }
    else if (g_OsVer.dwMajorVersion == 5)
    {
        if (g_OsVer.dwMinorVersion == 0)
        {
            g_OsIdx = 1;
            return TRUE;
        }
        else if (g_OsVer.dwMinorVersion == 1)
        {
            g_OsIdx = 2;
            return TRUE;
        }
        else if (g_OsVer.dwMinorVersion == 2)
        {
            g_OsIdx = 3;
            return TRUE;
        }
    }
    else if (g_OsVer.dwMajorVersion == 6)
    {
        g_OsIdx = 4;
        return TRUE;
    }
    return FALSE;
}
