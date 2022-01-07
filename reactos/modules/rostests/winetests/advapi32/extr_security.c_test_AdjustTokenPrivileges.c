
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {scalar_t__ Attributes; void* Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef void* LUID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int AdjustTokenPrivileges (int ,int ,TYPE_2__*,int,int *,int*) ;
 int CloseHandle (int ) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int LookupPrivilegeValueA (int *,int ,void**) ;
 int OpenProcessToken (int ,int ,int *) ;
 int SE_BACKUP_NAME ;
 scalar_t__ SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_AdjustTokenPrivileges(void)
{
    TOKEN_PRIVILEGES tp;
    HANDLE token;
    DWORD len;
    LUID luid;
    BOOL ret;

    if (!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES, &token))
        return;

    if (!LookupPrivilegeValueA(((void*)0), SE_BACKUP_NAME, &luid))
    {
        CloseHandle(token);
        return;
    }

    tp.PrivilegeCount = 1;
    tp.Privileges[0].Luid = luid;
    tp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

    len = 0xdeadbeef;
    ret = AdjustTokenPrivileges(token, FALSE, &tp, sizeof(TOKEN_PRIVILEGES), ((void*)0), &len);
    ok(ret, "got %d\n", ret);
    ok(len == 0xdeadbeef, "got length %d\n", len);


    tp.PrivilegeCount = 1;
    tp.Privileges[0].Luid = luid;
    tp.Privileges[0].Attributes = 0;
    ret = AdjustTokenPrivileges(token, FALSE, &tp, sizeof(TOKEN_PRIVILEGES), ((void*)0), ((void*)0));
    ok(ret, "got %d\n", ret);

    CloseHandle(token);
}
