
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sa ;
typedef int WCHAR ;
struct TYPE_3__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef int HWINSTA ;
typedef int DWORD ;
typedef int BOOL ;
typedef int ACCESS_MASK ;


 int CreateWindowStationW (int *,int ,int ,TYPE_1__*) ;
 int GetLastError () ;
 int SetLastError (int) ;

HWINSTA CreateInheritableWinsta(WCHAR* name, ACCESS_MASK dwDesiredAccess, BOOL inheritable, DWORD *error)
{
    HWINSTA hwinsta;
    SECURITY_ATTRIBUTES sa;
    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = ((void*)0);
    sa.bInheritHandle = inheritable;
    SetLastError(0xfeedf00d);
    hwinsta = CreateWindowStationW(name, 0, dwDesiredAccess, &sa);
    *error = GetLastError();
    return hwinsta;
}
