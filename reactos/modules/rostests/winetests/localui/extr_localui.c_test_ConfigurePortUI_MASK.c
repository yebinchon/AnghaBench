#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * pPortName; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pPortName; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_CANCELLED ; 
 scalar_t__ ERROR_INVALID_PRINTER_NAME ; 
 scalar_t__ ERROR_UNKNOWN_PORT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * com_absent ; 
 TYPE_2__* com_present ; 
 int /*<<< orphan*/ * does_not_existW ; 
 int /*<<< orphan*/ * emptyW ; 
 scalar_t__ file_present ; 
 int /*<<< orphan*/ * lpt_absent ; 
 TYPE_1__* lpt_present ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * portname_fileW ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD   res;

    /* not present before w2k */
    if (!&pConfigurePortUI) {
        FUNC4("ConfigurePortUI not found\n");
        return;
    }

    FUNC1(0xdeadbeef);
    res = FUNC3(NULL, NULL, NULL);
    FUNC2( !res &&
        ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());

    FUNC1(0xdeadbeef);
    res = FUNC3(NULL, NULL, emptyW);
    FUNC2( !res &&
        ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());


    FUNC1(0xdeadbeef);
    res = FUNC3(NULL, NULL, does_not_existW);
    FUNC2( !res &&
        ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());

    if (winetest_interactive && lpt_present) {
        FUNC1(0xdeadbeef);
        res = FUNC3(NULL, NULL, lpt_present->pPortName);
        FUNC2( res ||
            (FUNC0() == ERROR_CANCELLED) || (FUNC0() == ERROR_ACCESS_DENIED),
            "got %d with %u (expected '!= 0' or '0' with: ERROR_CANCELLED or "
            "ERROR_ACCESS_DENIED)\n", res, FUNC0());
    }

    if (lpt_absent) {
        FUNC1(0xdeadbeef);
        res = FUNC3(NULL, NULL, lpt_absent);
        FUNC2( !res &&
            ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
            "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
            "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());
    }

    if (winetest_interactive && com_present) {
        FUNC1(0xdeadbeef);
        res = FUNC3(NULL, NULL, com_present->pPortName);
        FUNC2( res ||
            (FUNC0() == ERROR_CANCELLED) || (FUNC0() == ERROR_ACCESS_DENIED),
            "got %d with %u (expected '!= 0' or '0' with: ERROR_CANCELLED or "
            "ERROR_ACCESS_DENIED)\n", res, FUNC0());
    }

    if (com_absent) {
        FUNC1(0xdeadbeef);
        res = FUNC3(NULL, NULL, com_absent);
        FUNC2( !res &&
            ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
            "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
            "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());

    }

    if (winetest_interactive && file_present) {
        FUNC1(0xdeadbeef);
        res = FUNC3(NULL, NULL, portname_fileW);
        FUNC2( !res &&
            ((FUNC0() == ERROR_CANCELLED) || (FUNC0() == ERROR_ACCESS_DENIED)),
            "got %d with %u (expected '0' with: ERROR_CANCELLED or "
            "ERROR_ACCESS_DENIED)\n", res, FUNC0());
    }
}