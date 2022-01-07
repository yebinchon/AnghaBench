
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwOSVersionInfoSize; int dwMajorVersion; int dwMinorVersion; } ;
typedef TYPE_1__ OSVERSIONINFOW ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetProcessVersion (int ) ;
 int GetVersionExW (TYPE_1__*) ;
 scalar_t__ MAKELONG (int ,int ) ;

__attribute__((used)) static DWORD get_app_version(void)
{
    static DWORD version;
    if (!version)
    {
        DWORD dwEmulatedVersion;
        OSVERSIONINFOW info;
        DWORD dwProcVersion = GetProcessVersion(0);

 info.dwOSVersionInfoSize = sizeof(OSVERSIONINFOW);
        GetVersionExW( &info );
        dwEmulatedVersion = MAKELONG( info.dwMinorVersion, info.dwMajorVersion );


        version = dwProcVersion < dwEmulatedVersion ? dwProcVersion : dwEmulatedVersion;
    }
    return version;
}
