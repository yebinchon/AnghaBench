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
typedef  int /*<<< orphan*/  IMalloc ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * CO_E_OBJISREG ; 
 int /*<<< orphan*/ * CO_E_OBJNOTREG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEMCTX_TASK ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  testspy ; 

__attribute__((used)) static void FUNC6(void)
{
    IMalloc *imalloc;
    HRESULT hr;

    hr = FUNC1(NULL);
    FUNC5(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC2();
    FUNC5(hr == CO_E_OBJNOTREG, "got 0x%08x\n", hr);

    hr = FUNC1(&testspy);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC1(NULL);
    FUNC5(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC1(&testspy);
    FUNC5(hr == CO_E_OBJISREG, "got 0x%08x\n", hr);

    imalloc = NULL;
    hr = FUNC0(MEMCTX_TASK, &imalloc);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    FUNC5(imalloc != NULL, "got %p\n", imalloc);

    FUNC3(imalloc, NULL);

    FUNC4(imalloc);

    hr = FUNC2();
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2();
    FUNC5(hr == CO_E_OBJNOTREG, "got 0x%08x\n", hr);
}