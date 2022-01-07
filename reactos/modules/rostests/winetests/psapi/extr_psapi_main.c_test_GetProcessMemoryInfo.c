
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmc ;
typedef int PROCESS_MEMORY_COUNTERS ;
typedef int DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ GetLastError () ;
 int GetProcessMemoryInfo (int *,int *,int) ;
 int SetLastError (int) ;
 int * hpQI ;
 int * hpSR ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetProcessMemoryInfo(void)
{
    PROCESS_MEMORY_COUNTERS pmc;
    DWORD ret;

    SetLastError(0xdeadbeef);
    ret = GetProcessMemoryInfo(((void*)0), &pmc, sizeof(pmc));
    ok(!ret, "GetProcessMemoryInfo should fail\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = GetProcessMemoryInfo(hpSR, &pmc, sizeof(pmc));
    ok(!ret, "GetProcessMemoryInfo should fail\n");
    ok(GetLastError() == ERROR_ACCESS_DENIED, "expected error=ERROR_ACCESS_DENIED but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = GetProcessMemoryInfo(hpQI, &pmc, sizeof(pmc)-1);
    ok(!ret, "GetProcessMemoryInfo should fail\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "expected error=ERROR_INSUFFICIENT_BUFFER but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = GetProcessMemoryInfo(hpQI, &pmc, sizeof(pmc));
    ok(ret == 1, "failed with %d\n", GetLastError());
}
