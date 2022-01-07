
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cbInQue; scalar_t__ cbOutQue; } ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ COMSTAT ;


 int ClearCommError (scalar_t__,scalar_t__*,TYPE_1__*) ;
 int CloseHandle (scalar_t__) ;
 int FALSE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ok (int,char*,...) ;
 scalar_t__ test_OpenComm (int ) ;

__attribute__((used)) static void test_ClearCommError(void)
{
    HANDLE hcom;
    DWORD errors;
    COMSTAT lpStat;

    hcom = test_OpenComm(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    ok(ClearCommError(hcom, &errors, &lpStat), "ClearCommError failed\n");
    ok(lpStat.cbInQue == 0, "Unexpected %d chars in InQueue\n", lpStat.cbInQue);
    ok(lpStat.cbOutQue == 0, "Unexpected %d chars in OutQueue\n", lpStat.cbOutQue);
    ok(errors == 0, "ClearCommErrors: Unexpected error 0x%08x\n", errors);

    CloseHandle(hcom);
}
