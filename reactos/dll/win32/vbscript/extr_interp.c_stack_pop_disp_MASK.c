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
typedef  int /*<<< orphan*/  exec_ctx_t ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int VT_BYREF ; 
 int VT_DISPATCH ; 
 int VT_VARIANT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(exec_ctx_t *ctx, IDispatch **ret)
{
    VARIANT *v = FUNC7(ctx);

    if(FUNC4(v) == VT_DISPATCH) {
        *ret = FUNC3(v);
        return S_OK;
    }

    if(FUNC4(v) != (VT_VARIANT|VT_BYREF)) {
        FUNC0("not supported type: %s\n", FUNC6(v));
        FUNC5(v);
        return E_FAIL;
    }

    v = FUNC2(v);
    if(FUNC4(v) != VT_DISPATCH) {
        FUNC0("not disp %s\n", FUNC6(v));
        return E_FAIL;
    }

    if(FUNC3(v))
        FUNC1(FUNC3(v));
    *ret = FUNC3(v);
    return S_OK;
}