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
typedef  int /*<<< orphan*/  funcs ;
struct TYPE_3__ {int cbStruct; int /*<<< orphan*/ * pfnFree; int /*<<< orphan*/ * pfnAlloc; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_1__ CRYPT_PROVIDER_FUNCTIONS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WINTRUST_ACTION_GENERIC_VERIFY_V2 ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    BOOL ret;
    CRYPT_PROVIDER_FUNCTIONS funcs = {0};
    GUID action = WINTRUST_ACTION_GENERIC_VERIFY_V2;

    if (!&pWintrustLoadFunctionPointers)
    {
        FUNC4("WintrustLoadFunctionPointers is not available\n");
        return;
    }
    FUNC1(0xdeadbeef);
    ret = FUNC3(NULL, NULL);
    FUNC2(!ret && FUNC0() == 0xdeadbeef, "Expected failure\n");
    FUNC1(0xdeadbeef);
    ret = FUNC3(&action, NULL);
    FUNC2(!ret && FUNC0() == 0xdeadbeef, "Expected failure\n");

    FUNC1(0xdeadbeef);
    ret = FUNC3(NULL, &funcs);
    FUNC2(!ret, "WintrustLoadFunctionPointers succeeded\n");
    FUNC2(FUNC0() == ERROR_INVALID_PARAMETER ||
        FUNC0() == 0xdeadbeef /* W2K and XP-SP1 */,
        "Expected ERROR_INVALID_PARAMETER or 0xdeadbeef, got %d\n", FUNC0());

    FUNC1(0xdeadbeef);
    funcs.cbStruct = 0;
    ret = FUNC3(&action, &funcs);
    FUNC2(!ret && FUNC0() == 0xdeadbeef, "Expected failure\n");
    FUNC1(0xdeadbeef);
    funcs.cbStruct = sizeof(funcs);
    ret = FUNC3(&action, &funcs);
    FUNC2(ret, "WintrustLoadFunctionPointers failed: %d\n", FUNC0());
    FUNC2(funcs.pfnAlloc != NULL, "Expected a pointer\n");
    FUNC2(funcs.pfnFree != NULL, "Expected a pointer\n");
}