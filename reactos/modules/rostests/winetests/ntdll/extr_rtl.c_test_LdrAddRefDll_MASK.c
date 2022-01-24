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
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/ * BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  LDR_ADDREF_DLL_PIN ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HMODULE mod, mod2;
    NTSTATUS status;
    BOOL ret;

    if (!&pLdrAddRefDll)
    {
        FUNC5( "LdrAddRefDll not supported\n" );
        return;
    }

    mod = FUNC2("comctl32.dll");
    FUNC3(mod != NULL, "got %p\n", mod);
    ret = FUNC0(mod);
    FUNC3(*ret, "got %d\n", ret);

    mod2 = FUNC1("comctl32.dll");
    FUNC3(mod2 == NULL, "got %p\n", mod2);

    /* load, addref and release 2 times */
    mod = FUNC2("comctl32.dll");
    FUNC3(mod != NULL, "got %p\n", mod);
    status = FUNC4(0, mod);
    FUNC3(status == STATUS_SUCCESS, "got 0x%08x\n", &status);
    ret = FUNC0(mod);
    FUNC3(*ret, "got %d\n", ret);

    mod2 = FUNC1("comctl32.dll");
    FUNC3(mod2 != NULL, "got %p\n", mod2);
    ret = FUNC0(mod);
    FUNC3(*ret, "got %d\n", ret);

    mod2 = FUNC1("comctl32.dll");
    FUNC3(mod2 == NULL, "got %p\n", mod2);

    /* pin refcount */
    mod = FUNC2("comctl32.dll");
    FUNC3(mod != NULL, "got %p\n", mod);
    status = FUNC4(LDR_ADDREF_DLL_PIN, mod);
    FUNC3(status == STATUS_SUCCESS, "got 0x%08x\n", &status);

    ret = FUNC0(mod);
    FUNC3(*ret, "got %d\n", ret);
    ret = FUNC0(mod);
    FUNC3(*ret, "got %d\n", ret);
    ret = FUNC0(mod);
    FUNC3(*ret, "got %d\n", ret);
    ret = FUNC0(mod);
    FUNC3(*ret, "got %d\n", ret);

    mod2 = FUNC1("comctl32.dll");
    FUNC3(mod2 != NULL, "got %p\n", mod2);
}