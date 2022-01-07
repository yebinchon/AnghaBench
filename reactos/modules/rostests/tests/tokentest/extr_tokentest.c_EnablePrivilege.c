
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int member_1; int member_0; } ;
struct TYPE_8__ {int member_1; TYPE_3__ member_0; } ;
struct TYPE_7__ {TYPE_2__ member_0; } ;
struct TYPE_11__ {int member_0; TYPE_4__* Privileges; TYPE_1__ member_1; } ;
struct TYPE_10__ {int Luid; } ;
typedef TYPE_5__ TOKEN_PRIVILEGES ;
typedef int LPWSTR ;
typedef int HANDLE ;
typedef int BOOL ;


 int AdjustTokenPrivileges (int ,int ,TYPE_5__*,int,int ,int ) ;
 int CloseHandle (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int LookupPrivilegeValue (int ,int ,int *) ;
 int OpenProcessToken (int ,int ,int *) ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;

BOOL
EnablePrivilege(LPWSTR wszName)
{
    HANDLE hToken;
    TOKEN_PRIVILEGES priv = {1, {{{0, 0}, SE_PRIVILEGE_ENABLED}}};
 BOOL bResult;

    LookupPrivilegeValue(0, wszName, &priv.Privileges[0].Luid);

    OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES, &hToken);

    AdjustTokenPrivileges(hToken, FALSE, &priv, sizeof priv, 0, 0);
    bResult = GetLastError() == ERROR_SUCCESS;

    CloseHandle(hToken);
    return bResult;
}
