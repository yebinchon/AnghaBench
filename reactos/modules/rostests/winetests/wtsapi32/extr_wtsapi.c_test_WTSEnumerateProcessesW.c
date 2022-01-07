
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int pProcessName; } ;
typedef TYPE_1__* PWTS_PROCESS_INFOW ;
typedef size_t DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetModuleFileNameW (int *,char*,int) ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int WTSEnumerateProcessesW (int ,int,int,TYPE_1__**,size_t*) ;
 int WTSFreeMemory (TYPE_1__*) ;
 int WTS_CURRENT_SERVER_HANDLE ;
 scalar_t__ broken (int) ;
 int lstrcmpW (char*,int ) ;
 int lstrlenW (char*) ;
 int ok (int,char*,...) ;
 scalar_t__ wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_WTSEnumerateProcessesW(void)
{
    BOOL found = FALSE, ret;
    DWORD count, i;
    PWTS_PROCESS_INFOW info;
    WCHAR *pname, nameW[MAX_PATH];

    GetModuleFileNameW(((void*)0), nameW, MAX_PATH);
    for (pname = nameW + lstrlenW(nameW); pname > nameW; pname--)
    {
        if(*pname == '/' || *pname == '\\')
        {
            pname++;
            break;
        }
    }

    info = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = WTSEnumerateProcessesW(WTS_CURRENT_SERVER_HANDLE, 1, 1, &info, &count);
    ok(!ret, "expected WTSEnumerateProcessesW to fail\n");
    ok(GetLastError()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", GetLastError());
    if (info) WTSFreeMemory(info);

    info = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = WTSEnumerateProcessesW(WTS_CURRENT_SERVER_HANDLE, 0, 0, &info, &count);
    ok(!ret, "expected WTSEnumerateProcessesW to fail\n");
    ok(GetLastError()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", GetLastError());
    if (info) WTSFreeMemory(info);

    info = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = WTSEnumerateProcessesW(WTS_CURRENT_SERVER_HANDLE, 0, 2, &info, &count);
    ok(!ret, "expected WTSEnumerateProcessesW to fail\n");
    ok(GetLastError()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", GetLastError());
    if (info) WTSFreeMemory(info);

    SetLastError(0xdeadbeef);
    ret = WTSEnumerateProcessesW(WTS_CURRENT_SERVER_HANDLE, 0, 1, ((void*)0), &count);
    ok(!ret, "expected WTSEnumerateProcessesW to fail\n");
    ok(GetLastError()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", GetLastError());

    info = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = WTSEnumerateProcessesW(WTS_CURRENT_SERVER_HANDLE, 0, 1, &info, ((void*)0));
    ok(!ret, "expected WTSEnumerateProcessesW to fail\n");
    ok(GetLastError()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", GetLastError());
    if (info) WTSFreeMemory(info);

    count = 0;
    info = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = WTSEnumerateProcessesW(WTS_CURRENT_SERVER_HANDLE, 0, 1, &info, &count);
    ok(ret || broken(!ret),
        "expected WTSEnumerateProcessesW to succeed; failed with %d\n", GetLastError());
    for(i = 0; ret && i < count; i++)
    {
        found = found || !lstrcmpW(pname, info[i].pProcessName);
    }
    ok(found || broken(!ret), "process name %s not found\n", wine_dbgstr_w(pname));
    if (info) WTSFreeMemory(info);
}
