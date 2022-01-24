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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    LONG res;
    char longname[401];

    res = FUNC2( hkey_main, "test", 0, REG_SZ, (const BYTE*)"value", 6 );
    FUNC5(res == ERROR_SUCCESS, "expect ERROR_SUCCESS, got %i\n", res);

    res = FUNC1( hkey_main, "test", NULL, NULL, NULL, NULL);
    FUNC5(res == ERROR_SUCCESS, "expect ERROR_SUCCESS, got %i\n", res);

    res = FUNC0( hkey_main, "test" );
    FUNC5(res == ERROR_SUCCESS, "expect ERROR_SUCCESS, got %i\n", res);

    res = FUNC1( hkey_main, "test", NULL, NULL, NULL, NULL);
    FUNC5(res == ERROR_FILE_NOT_FOUND, "expect ERROR_FILE_NOT_FOUND, got %i\n", res);

    res = FUNC0( hkey_main, "test" );
    FUNC5(res == ERROR_FILE_NOT_FOUND, "expect ERROR_FILE_NOT_FOUND, got %i\n", res);

    FUNC4(longname, 'a', 400);
    longname[400] = 0;
    res = FUNC0( hkey_main, longname );
    FUNC5(res == ERROR_FILE_NOT_FOUND || FUNC3(res == ERROR_MORE_DATA), /* nt4, win2k */
       "expect ERROR_FILE_NOT_FOUND, got %i\n", res);

    /* Default registry value */
    res = FUNC2(hkey_main, "", 0, REG_SZ, (const BYTE *)"value", 6);
    FUNC5(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", res);

    res = FUNC1(hkey_main, "", NULL, NULL, NULL, NULL);
    FUNC5(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", res);

    res = FUNC0(hkey_main, "" );
    FUNC5(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", res);

    res = FUNC1(hkey_main, "", NULL, NULL, NULL, NULL);
    FUNC5(res == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", res);
}