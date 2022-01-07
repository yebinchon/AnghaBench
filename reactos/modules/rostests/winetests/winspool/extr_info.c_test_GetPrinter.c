
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pDriverName; int * pPrinterName; } ;
typedef TYPE_1__ PRINTER_INFO_2A ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ClosePrinter (scalar_t__) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_LEVEL ;
 int ERROR_NOT_SUPPORTED ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int GetPrinterA (scalar_t__,int,int *,int,int*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int OpenPrinterA (int,scalar_t__*,int *) ;
 int SetLastError (int) ;
 int default_printer ;
 int ok (int,char*,...) ;
 int on_win9x ;
 int pGetPrinterW (scalar_t__,int,int *,int ,int*) ;
 int skip (char*,...) ;
 int trace (char*,int *) ;
 int win_skip (char*,int) ;

__attribute__((used)) static void test_GetPrinter(void)
{
    HANDLE hprn;
    BOOL ret;
    BYTE *buf;
    INT level;
    DWORD needed, filled;

    if (!default_printer)
    {
        skip("There is no default printer installed\n");
        return;
    }

    hprn = 0;
    ret = OpenPrinterA(default_printer, &hprn, ((void*)0));
    if (!ret)
    {
        skip("Unable to open the default printer (%s)\n", default_printer);
        return;
    }
    ok(hprn != 0, "wrong hprn %p\n", hprn);

    for (level = 1; level <= 9; level++)
    {
        SetLastError(0xdeadbeef);
        needed = (DWORD)-1;
        ret = GetPrinterA(hprn, level, ((void*)0), 0, &needed);
        if (ret)
        {
            win_skip("Level %d is not supported on Win9x/WinMe\n", level);
            ok(GetLastError() == ERROR_SUCCESS, "wrong error %d\n", GetLastError());
            ok(needed == 0,"Expected 0, got %d\n", needed);
            continue;
        }
        ok(!ret, "level %d: GetPrinter should fail\n", level);

        if (GetLastError() == ERROR_INVALID_LEVEL ||
            GetLastError() == ERROR_NOT_SUPPORTED )
        {
            skip("Level %d not supported\n", level);
            continue;
        }
        ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "wrong error %d\n", GetLastError());
        ok(needed > 0,"not expected needed buffer size %d\n", needed);


        if (!on_win9x && !ret && pGetPrinterW && level != 6 && level != 7)
        {
            DWORD double_needed;
            ret = pGetPrinterW(hprn, level, ((void*)0), 0, &double_needed);
            ok(!ret, "level %d: GetPrinter error %d\n", level, GetLastError());
            ok(double_needed == needed, "level %d: GetPrinterA returned different size %d than GetPrinterW (%d)\n", level, needed, double_needed);
        }

        buf = HeapAlloc(GetProcessHeap(), 0, needed);

        SetLastError(0xdeadbeef);
        filled = -1;
        ret = GetPrinterA(hprn, level, buf, needed, &filled);
        ok(ret, "level %d: GetPrinter error %d\n", level, GetLastError());
        ok(needed == filled, "needed %d != filled %d\n", needed, filled);

        if (level == 2)
        {
            PRINTER_INFO_2A *pi_2 = (PRINTER_INFO_2A *)buf;

            ok(pi_2->pPrinterName!= ((void*)0), "not expected NULL ptr\n");
            ok(pi_2->pDriverName!= ((void*)0), "not expected NULL ptr\n");

            trace("pPrinterName %s\n", pi_2->pPrinterName);
            trace("pDriverName %s\n", pi_2->pDriverName);
        }

        HeapFree(GetProcessHeap(), 0, buf);
    }

    SetLastError(0xdeadbeef);
    ret = ClosePrinter(hprn);
    ok(ret, "ClosePrinter error %d\n", GetLastError());
}
