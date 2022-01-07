
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwMajorVersion; } ;
typedef TYPE_1__ RTL_OSVERSIONINFOW ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__* GetRealOSVersion () ;

__attribute__((used)) static BOOL IsWin10Plus(void)
{
    RTL_OSVERSIONINFOW *info = GetRealOSVersion();
    if (!info)
        return FALSE;

    return info->dwMajorVersion >= 10;
}
