#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * pDriverName; int /*<<< orphan*/ * pPrinterName; } ;
typedef  TYPE_1__ PRINTER_INFO_2A ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_LEVEL ; 
 int ERROR_NOT_SUPPORTED ; 
 int ERROR_SUCCESS ; 
 int FUNC1 () ; 
 int FUNC2 (scalar_t__,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int default_printer ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  on_win9x ; 
 int FUNC9 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

__attribute__((used)) static void FUNC13(void)
{
    HANDLE hprn;
    BOOL ret;
    BYTE *buf;
    INT level;
    DWORD needed, filled;

    if (!default_printer)
    {
        FUNC10("There is no default printer installed\n");
        return;
    }

    hprn = 0;
    ret = FUNC6(default_printer, &hprn, NULL);
    if (!ret)
    {
        FUNC10("Unable to open the default printer (%s)\n", default_printer);
        return;
    }
    FUNC8(hprn != 0, "wrong hprn %p\n", hprn);

    for (level = 1; level <= 9; level++)
    {
        FUNC7(0xdeadbeef);
        needed = (DWORD)-1;
        ret = FUNC2(hprn, level, NULL, 0, &needed);
        if (ret)
        {
            FUNC12("Level %d is not supported on Win9x/WinMe\n", level);
            FUNC8(FUNC1() == ERROR_SUCCESS, "wrong error %d\n", FUNC1());
            FUNC8(needed == 0,"Expected 0, got %d\n", needed);
            continue;
        }
        FUNC8(!ret, "level %d: GetPrinter should fail\n", level);
        /* Not all levels are supported on all Windows-Versions */
        if (FUNC1() == ERROR_INVALID_LEVEL ||
            FUNC1() == ERROR_NOT_SUPPORTED /* Win9x/WinMe */)
        {
            FUNC10("Level %d not supported\n", level);
            continue;
        }
        FUNC8(FUNC1() == ERROR_INSUFFICIENT_BUFFER, "wrong error %d\n", FUNC1());
        FUNC8(needed > 0,"not expected needed buffer size %d\n", needed);

        /* GetPrinterA returns the same number of bytes as GetPrinterW */
        if (!on_win9x && !ret && &pGetPrinterW && level != 6 && level != 7)
        {
            DWORD double_needed;
            ret = FUNC9(hprn, level, NULL, 0, &double_needed);
            FUNC8(!ret, "level %d: GetPrinter error %d\n", level, FUNC1());
            FUNC8(double_needed == needed, "level %d: GetPrinterA returned different size %d than GetPrinterW (%d)\n", level, needed, double_needed);
        }

        buf = FUNC4(FUNC3(), 0, needed);

        FUNC7(0xdeadbeef);
        filled = -1;
        ret = FUNC2(hprn, level, buf, needed, &filled);
        FUNC8(ret, "level %d: GetPrinter error %d\n", level, FUNC1());
        FUNC8(needed == filled, "needed %d != filled %d\n", needed, filled);

        if (level == 2)
        {
            PRINTER_INFO_2A *pi_2 = (PRINTER_INFO_2A *)buf;

            FUNC8(pi_2->pPrinterName!= NULL, "not expected NULL ptr\n");
            FUNC8(pi_2->pDriverName!= NULL, "not expected NULL ptr\n");

            FUNC11("pPrinterName %s\n", pi_2->pPrinterName);
            FUNC11("pDriverName %s\n", pi_2->pDriverName);
        }

        FUNC5(FUNC3(), 0, buf);
    }

    FUNC7(0xdeadbeef);
    ret = FUNC0(hprn);
    FUNC8(ret, "ClosePrinter error %d\n", FUNC1());
}