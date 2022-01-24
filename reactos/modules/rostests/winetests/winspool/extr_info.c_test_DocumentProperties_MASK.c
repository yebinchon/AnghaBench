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
typedef  int LONG ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DEVMODEA ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  DM_OUT_BUFFER ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int IDOK ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  default_printer ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

__attribute__((used)) static void FUNC12(void)
{
    HANDLE hprn;
    LONG dm_size, ret;
    DEVMODEA *dm;
    char empty_str[] = "";

    if (!default_printer)
    {
        FUNC9("There is no default printer installed\n");
        return;
    }

    hprn = 0;
    ret = FUNC6(default_printer, &hprn, NULL);
    if (!ret)
    {
        FUNC9("Unable to open the default printer (%s)\n", default_printer);
        return;
    }
    FUNC8(hprn != 0, "wrong hprn %p\n", hprn);

    dm_size = FUNC1(0, hprn, NULL, NULL, NULL, 0);
    FUNC11("DEVMODEA required size %d\n", dm_size);
    FUNC8(dm_size >= sizeof(DEVMODEA), "unexpected DocumentPropertiesA ret value %d\n", dm_size);

    dm = FUNC4(FUNC3(), HEAP_ZERO_MEMORY, dm_size);

    ret = FUNC1(0, hprn, NULL, dm, dm, DM_OUT_BUFFER);
    FUNC8(ret == IDOK, "DocumentPropertiesA ret value %d != expected IDOK\n", ret);

    ret = FUNC1(0, hprn, empty_str, dm, dm, DM_OUT_BUFFER);
    FUNC8(ret == IDOK, "DocumentPropertiesA ret value %d != expected IDOK\n", ret);

    FUNC10(dm, dm_size, default_printer);

    FUNC5(FUNC3(), 0, dm);

    FUNC7(0xdeadbeef);
    ret = FUNC0(hprn);
    FUNC8(ret, "ClosePrinter error %d\n", FUNC2());
}