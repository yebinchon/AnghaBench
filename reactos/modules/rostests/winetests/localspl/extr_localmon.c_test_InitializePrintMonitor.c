
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwMonitorSize; } ;
typedef int MONITOR ;
typedef TYPE_1__* LPMONITOREX ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int * Monitors_LocalPortW ;
 int SetLastError (int) ;
 int * emptyW ;
 int ok (int,char*,...) ;
 TYPE_1__* pInitializePrintMonitor (int *) ;
 TYPE_1__* pm ;

__attribute__((used)) static void test_InitializePrintMonitor(void)
{
    LPMONITOREX res;

    if (!pInitializePrintMonitor) return;

    SetLastError(0xdeadbeef);
    res = pInitializePrintMonitor(((void*)0));

    ok( res || (GetLastError() == ERROR_INVALID_PARAMETER),
        "returned %p with %u\n (expected '!= NULL' or: NULL with "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = pInitializePrintMonitor(emptyW);
    ok( res || (GetLastError() == ERROR_INVALID_PARAMETER),
        "returned %p with %u\n (expected '!= NULL' or: NULL with "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError());


    SetLastError(0xdeadbeef);
    res = pInitializePrintMonitor(Monitors_LocalPortW);
    ok( res == pm,
        "returned %p with %u (expected %p)\n", res, GetLastError(), pm);
    ok(res->dwMonitorSize == sizeof(MONITOR), "wrong dwMonitorSize %u\n", res->dwMonitorSize);
}
