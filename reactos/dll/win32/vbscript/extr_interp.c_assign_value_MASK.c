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
struct TYPE_3__ {int /*<<< orphan*/  script; } ;
typedef  TYPE_1__ exec_ctx_t ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int DISPATCH_PROPERTYPUTREF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(exec_ctx_t *ctx, VARIANT *dst, VARIANT *src, WORD flags)
{
    HRESULT hres;

    hres = FUNC4(dst, src);
    if(FUNC0(hres))
        return hres;

    if(FUNC3(dst) == VT_DISPATCH && !(flags & DISPATCH_PROPERTYPUTREF)) {
        VARIANT value;

        hres = FUNC5(ctx->script, FUNC2(dst), &value);
        FUNC1(FUNC2(dst));
        if(FUNC0(hres))
            return hres;

        *dst = value;
    }

    return S_OK;
}