
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int HardErrorDisabled; } ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetCurrentProcess () ;
 TYPE_1__* NtCurrentTeb () ;
 int STATUS_INVALID_PARAMETER_1 ;
 int STATUS_SUCCESS ;
 int STATUS_WAIT_1 ;
 int ok (int,char*,int,...) ;
 int pIsWow64Process (int ,int *) ;
 int pRtlGetThreadErrorMode () ;
 int pRtlSetThreadErrorMode (int,int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlThreadErrorMode(void)
{
    DWORD oldmode;
    BOOL is_wow64;
    DWORD mode;
    NTSTATUS status;

    if (!pRtlGetThreadErrorMode || !pRtlSetThreadErrorMode)
    {
        win_skip("RtlGetThreadErrorMode and/or RtlSetThreadErrorMode not available\n");
        return;
    }

    if (!pIsWow64Process || !pIsWow64Process(GetCurrentProcess(), &is_wow64))
        is_wow64 = FALSE;

    oldmode = pRtlGetThreadErrorMode();

    status = pRtlSetThreadErrorMode(0x70, &mode);
    ok(status == STATUS_SUCCESS ||
       status == STATUS_WAIT_1,
       "RtlSetThreadErrorMode failed with error 0x%08x\n", status);
    ok(mode == oldmode,
       "RtlSetThreadErrorMode returned mode 0x%x, expected 0x%x\n",
       mode, oldmode);
    ok(pRtlGetThreadErrorMode() == 0x70,
       "RtlGetThreadErrorMode returned 0x%x, expected 0x%x\n", mode, 0x70);
    if (!is_wow64)
    {
        ok(NtCurrentTeb()->HardErrorDisabled == 0x70,
           "The TEB contains 0x%x, expected 0x%x\n",
           NtCurrentTeb()->HardErrorDisabled, 0x70);
    }

    status = pRtlSetThreadErrorMode(0, &mode);
    ok(status == STATUS_SUCCESS ||
       status == STATUS_WAIT_1,
       "RtlSetThreadErrorMode failed with error 0x%08x\n", status);
    ok(mode == 0x70,
       "RtlSetThreadErrorMode returned mode 0x%x, expected 0x%x\n",
       mode, 0x70);
    ok(pRtlGetThreadErrorMode() == 0,
       "RtlGetThreadErrorMode returned 0x%x, expected 0x%x\n", mode, 0);
    if (!is_wow64)
    {
        ok(NtCurrentTeb()->HardErrorDisabled == 0,
           "The TEB contains 0x%x, expected 0x%x\n",
           NtCurrentTeb()->HardErrorDisabled, 0);
    }

    for (mode = 1; mode; mode <<= 1)
    {
        status = pRtlSetThreadErrorMode(mode, ((void*)0));
        if (mode & 0x70)
            ok(status == STATUS_SUCCESS ||
               status == STATUS_WAIT_1,
               "RtlSetThreadErrorMode(%x,NULL) failed with error 0x%08x\n",
               mode, status);
        else
            ok(status == STATUS_INVALID_PARAMETER_1,
               "RtlSetThreadErrorMode(%x,NULL) returns 0x%08x, "
               "expected STATUS_INVALID_PARAMETER_1\n",
               mode, status);
    }

    pRtlSetThreadErrorMode(oldmode, ((void*)0));
}
