
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DesiredAccess; int * pDevMode; int * pDatatype; } ;
typedef TYPE_1__ PRINTER_DEFAULTSA ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ClosePrinter (int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 scalar_t__ OpenPrinterA (int ,int **,TYPE_1__*) ;
 scalar_t__ RPC_X_NULL_REF_POINTER ;
 int SERVER_ACCESS_ADMINISTER ;
 int SetLastError (int) ;
 int * cmd_MonitorUIW ;
 int * emptyW ;
 scalar_t__ is_access_denied (scalar_t__,scalar_t__) ;
 scalar_t__ is_spooler_deactivated (scalar_t__,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 int ok (int,char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 scalar_t__ pXcvDataW (int *,int *,int *,int ,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int skip (char*,scalar_t__) ;
 int xcv_localport ;

__attribute__((used)) static void test_XcvDataW_MonitorUI(void)
{
    DWORD res;
    HANDLE hXcv;
    BYTE buffer[MAX_PATH + 4];
    DWORD needed;
    DWORD status;
    DWORD len;
    PRINTER_DEFAULTSA pd;


    if (pXcvDataW == ((void*)0)) return;

    pd.pDatatype = ((void*)0);
    pd.pDevMode = ((void*)0);
    pd.DesiredAccess = SERVER_ACCESS_ADMINISTER;

    hXcv = ((void*)0);
    SetLastError(0xdeadbeef);
    res = OpenPrinterA(xcv_localport, &hXcv, &pd);
    if (is_spooler_deactivated(res, GetLastError())) return;
    if (is_access_denied(res, GetLastError())) return;

    ok(res, "returned %d with %u and handle %p (expected '!= 0')\n", res, GetLastError(), hXcv);
    if (!res) return;


    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, cmd_MonitorUIW, ((void*)0), 0, ((void*)0), 0, &needed, &status);
    ok( res && (status == ERROR_INSUFFICIENT_BUFFER) && (needed <= MAX_PATH),
        "returned %d with %u and %u for status %u (expected '!= 0' and "
        "'<= MAX_PATH' for status ERROR_INSUFFICIENT_BUFFER)\n",
        res, GetLastError(), needed, status);

    if (needed > MAX_PATH) {
        ClosePrinter(hXcv);
        skip("buffer overflow (%u)\n", needed);
        return;
    }
    len = needed;


    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, emptyW, ((void*)0), 0, ((void*)0), 0, &needed, &status);
    ok( res && (status == ERROR_INVALID_PARAMETER),
        "returned %d with %u and %u for status %u (expected '!= 0' with "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError(), needed, status);

    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, ((void*)0), ((void*)0), 0, buffer, MAX_PATH, &needed, &status);
    ok( !res && (GetLastError() == RPC_X_NULL_REF_POINTER),
        "returned %d with %u and %u for status %u (expected '0' with "
        "RPC_X_NULL_REF_POINTER)\n", res, GetLastError(), needed, status);


    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len, ((void*)0), &status);
    ok( !res && (GetLastError() == ERROR_INVALID_PARAMETER),
        "returned %d with %u and %u for status %u (expected '0' with "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError(), needed, status);

    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, cmd_MonitorUIW, ((void*)0), 0, ((void*)0), len, &needed, &status);
    ok( !res && (GetLastError() == RPC_X_NULL_REF_POINTER),
        "returned %d with %u and %u for status %u (expected '0' with "
        "RPC_X_NULL_REF_POINTER)\n", res, GetLastError(), needed, status);

    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len, &needed, ((void*)0));
    ok( !res && (GetLastError() == RPC_X_NULL_REF_POINTER),
        "returned %d with %u and %u for status %u (expected '0' with "
        "RPC_X_NULL_REF_POINTER)\n", res, GetLastError(), needed, status);


    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len+1, &needed, &status);
    ok( res && (status == ERROR_SUCCESS),
        "returned %d with %u and %u for status %u (expected '!= 0' for status "
        "ERROR_SUCCESS)\n", res, GetLastError(), needed, status);



    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len-1, &needed, &status);
    ok( res && (status == ERROR_INSUFFICIENT_BUFFER),
        "returned %d with %u and %u for status %u (expected '!= 0' for status "
        "ERROR_INSUFFICIENT_BUFFER)\n", res, GetLastError(), needed, status);



    memset(buffer, 0, len);
    needed = (DWORD) 0xdeadbeef;
    status = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataW(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len, &needed, &status);
    ok( res && (status == ERROR_SUCCESS),
        "returned %d with %u and %u for status %u (expected '!= 0' for status "
        "ERROR_SUCCESS)\n", res, GetLastError(), needed, status);

    ClosePrinter(hXcv);
}
