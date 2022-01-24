#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wcx ;
struct TYPE_3__ {int cbSize; int /*<<< orphan*/ * lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSEXA ;
typedef  int /*<<< orphan*/  WNDCLASSA ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int ERROR_NOACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR staticW[] = {'s','t','a','t','i','c',0};
    WNDCLASSA wc;
    WNDCLASSEXA wcx;
    BOOL ret;

    FUNC5(0xdeadbeef);
    ret = FUNC0(0, "static", &wc);
    FUNC7(ret, "GetClassInfoA() error %d\n", FUNC4());

if (0) { /* crashes under XP */
    FUNC5(0xdeadbeef);
    ret = FUNC0(0, "static", NULL);
    FUNC7(ret, "GetClassInfoA() error %d\n", FUNC4());

    FUNC5(0xdeadbeef);
    ret = FUNC3(0, staticW, NULL);
    FUNC7(ret, "GetClassInfoW() error %d\n", FUNC4());
}

    wcx.cbSize = sizeof(wcx);
    FUNC5(0xdeadbeef);
    ret = FUNC1(0, "static", &wcx);
    FUNC7(ret, "GetClassInfoExA() error %d\n", FUNC4());

    FUNC5(0xdeadbeef);
    ret = FUNC1(0, "static", NULL);
    FUNC7(!ret, "GetClassInfoExA() should fail\n");
    FUNC7(FUNC4() == ERROR_NOACCESS ||
       FUNC6(FUNC4() == 0xdeadbeef), /* win9x */
       "expected ERROR_NOACCESS, got %d\n", FUNC4());

    FUNC5(0xdeadbeef);
    ret = FUNC2(0, staticW, NULL);
    FUNC7(!ret, "GetClassInfoExW() should fail\n");
    FUNC7(FUNC4() == ERROR_NOACCESS ||
       FUNC6(FUNC4() == 0xdeadbeef) /* NT4 */ ||
       FUNC6(FUNC4() == ERROR_CALL_NOT_IMPLEMENTED), /* win9x */
       "expected ERROR_NOACCESS, got %d\n", FUNC4());

    wcx.cbSize = 0;
    wcx.lpfnWndProc = NULL;
    FUNC5(0xdeadbeef);
    ret = FUNC1(0, "static", &wcx);
    FUNC7(ret, "GetClassInfoExA() error %d\n", FUNC4());
    FUNC7(wcx.cbSize == 0, "expected 0, got %u\n", wcx.cbSize);
    FUNC7(wcx.lpfnWndProc != NULL, "got null proc\n");

    wcx.cbSize = sizeof(wcx) - 1;
    wcx.lpfnWndProc = NULL;
    FUNC5(0xdeadbeef);
    ret = FUNC1(0, "static", &wcx);
    FUNC7(ret, "GetClassInfoExA() error %d\n", FUNC4());
    FUNC7(wcx.cbSize == sizeof(wcx) - 1, "expected sizeof(wcx)-1, got %u\n", wcx.cbSize);
    FUNC7(wcx.lpfnWndProc != NULL, "got null proc\n");

    wcx.cbSize = sizeof(wcx) + 1;
    wcx.lpfnWndProc = NULL;
    FUNC5(0xdeadbeef);
    ret = FUNC1(0, "static", &wcx);
    FUNC7(ret, "GetClassInfoExA() error %d\n", FUNC4());
    FUNC7(wcx.cbSize == sizeof(wcx) + 1, "expected sizeof(wcx)+1, got %u\n", wcx.cbSize);
    FUNC7(wcx.lpfnWndProc != NULL, "got null proc\n");
}