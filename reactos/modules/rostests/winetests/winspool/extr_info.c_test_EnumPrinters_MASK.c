#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  PRINTER_ENUM_LOCAL ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    DWORD neededA, neededW, num;
    DWORD ret;

    FUNC3(0xdeadbeef);
    neededA = -1;
    ret = FUNC0(PRINTER_ENUM_LOCAL, NULL, 2, NULL, 0, &neededA, &num);
    if (FUNC4(ret, FUNC2())) return;
    if (!ret)
    {
        /* We have 1 or more printers */
        FUNC5(FUNC2() == ERROR_INSUFFICIENT_BUFFER, "gle %d\n", FUNC2());
        FUNC5(neededA > 0, "Expected neededA to show the number of needed bytes\n");
    }
    else
    {
        /* We don't have any printers defined */
        FUNC5(FUNC2() == S_OK, "gle %d\n", FUNC2());
        FUNC5(neededA == 0, "Expected neededA to be zero\n");
    }
    FUNC5(num == 0, "num %d\n", num);

    FUNC3(0xdeadbeef);
    neededW = -1;
    ret = FUNC1(PRINTER_ENUM_LOCAL, NULL, 2, NULL, 0, &neededW, &num);
    /* EnumPrintersW is not supported on all platforms */
    if (!ret && (FUNC2() == ERROR_CALL_NOT_IMPLEMENTED))
    {
        FUNC6("EnumPrintersW is not implemented\n");
        return;
    }

    if (!ret)
    {
        /* We have 1 or more printers */
        FUNC5(FUNC2() == ERROR_INSUFFICIENT_BUFFER, "gle %d\n", FUNC2());
        FUNC5(neededW > 0, "Expected neededW to show the number of needed bytes\n");
    }
    else
    {
        /* We don't have any printers defined */
        FUNC5(FUNC2() == S_OK, "gle %d\n", FUNC2());
        FUNC5(neededW == 0, "Expected neededW to be zero\n");
    }
    FUNC5(num == 0, "num %d\n", num);

    /* Outlook2003 relies on the buffer size returned by EnumPrintersA being big enough
       to hold the buffer returned by EnumPrintersW */
    FUNC5(neededA == neededW, "neededA %d neededW %d\n", neededA, neededW);
}