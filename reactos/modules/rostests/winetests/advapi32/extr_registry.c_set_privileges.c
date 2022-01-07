
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {scalar_t__ Attributes; int Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int LUID ;
typedef int LPCSTR ;
typedef int HANDLE ;
typedef scalar_t__ BOOL ;


 int AdjustTokenPrivileges (int ,scalar_t__,TYPE_2__*,int,int *,int *) ;
 int CloseHandle (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int LookupPrivilegeValueA (int *,int ,int *) ;
 int OpenProcessToken (int ,int ,int *) ;
 scalar_t__ SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL set_privileges(LPCSTR privilege, BOOL set)
{
    TOKEN_PRIVILEGES tp;
    HANDLE hToken;
    LUID luid;

    if (!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES, &hToken))
        return FALSE;

    if(!LookupPrivilegeValueA(((void*)0), privilege, &luid))
    {
        CloseHandle(hToken);
        return FALSE;
    }

    tp.PrivilegeCount = 1;
    tp.Privileges[0].Luid = luid;

    if (set)
        tp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
    else
        tp.Privileges[0].Attributes = 0;

    AdjustTokenPrivileges(hToken, FALSE, &tp, sizeof(TOKEN_PRIVILEGES), ((void*)0), ((void*)0));
    if (GetLastError() != ERROR_SUCCESS)
    {
        CloseHandle(hToken);
        return FALSE;
    }

    CloseHandle(hToken);
    return TRUE;
}
