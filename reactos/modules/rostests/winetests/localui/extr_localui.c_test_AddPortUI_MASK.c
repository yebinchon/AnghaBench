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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_CANCELLED ; 
 scalar_t__ ERROR_INVALID_PRINTER_NAME ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ ERROR_UNKNOWN_PORT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * does_not_existW ; 
 int /*<<< orphan*/ * emptyW ; 
 int /*<<< orphan*/ * localportW ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC6(void)
{
    DWORD   res;
    LPWSTR  new_portname;

    /* not present before w2k */
    if (!&pAddPortUI) {
        FUNC5("AddPortUI not found\n");
        return;
    }

    FUNC2(0xdeadbeef);
    res = FUNC4(NULL, NULL, NULL, NULL);
    FUNC3( !res &&
        ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());

    FUNC2(0xdeadbeef);
    res = FUNC4(NULL, NULL, emptyW, NULL);
    FUNC3( !res &&
        ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());

    FUNC2(0xdeadbeef);
    res = FUNC4(NULL, NULL, does_not_existW, NULL);
    FUNC3( !res &&
        ((FUNC0() == ERROR_UNKNOWN_PORT) || (FUNC0() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, FUNC0());

    if (winetest_interactive) {
        FUNC2(0xdeadbeef);
        new_portname = NULL;
        /*
         * - On MSDN, you can read that no dialog should be displayed when hWnd
         *   is NULL, but native localui does not care
         * - When the new port already exists,
         *   TRUE is returned, but new_portname is NULL
         * - When the new port starts with "COM" or "LPT",
         *   FALSE is returned with ERROR_NOT_SUPPORTED on windows
         */
        res = FUNC4(NULL, NULL, localportW, &new_portname);
        FUNC3( res ||
            (FUNC0() == ERROR_CANCELLED) ||
            (FUNC0() == ERROR_ACCESS_DENIED) ||
            (FUNC0() == ERROR_NOT_SUPPORTED),
            "got %d with %u and %p (expected '!= 0' or '0' with: "
            "ERROR_CANCELLED, ERROR_ACCESS_DENIED or ERROR_NOT_SUPPORTED)\n",
            res, FUNC0(), new_portname);

        FUNC1(new_portname);
    }
}