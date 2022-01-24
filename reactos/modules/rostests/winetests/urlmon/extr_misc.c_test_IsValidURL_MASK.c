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
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  wszHttpWineHQ ; 

__attribute__((used)) static void FUNC4(void)
{
    HRESULT hr;
    IBindCtx *bctx = NULL;

    hr = FUNC2(NULL, 0, 0);
    FUNC3(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = FUNC2(NULL, wszHttpWineHQ, 0);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC0(0, &bctx);

    hr = FUNC2(bctx, wszHttpWineHQ, 0);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC1(bctx);
}