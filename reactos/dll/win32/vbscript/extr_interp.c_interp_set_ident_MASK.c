#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* instr; } ;
typedef  TYPE_4__ exec_ctx_t ;
struct TYPE_10__ {int /*<<< orphan*/  bstr; } ;
struct TYPE_11__ {unsigned int uint; } ;
struct TYPE_12__ {TYPE_1__ arg1; TYPE_2__ arg2; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPPARAMS ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYPUTREF ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(exec_ctx_t *ctx)
{
    const BSTR arg = ctx->instr->arg1.bstr;
    const unsigned arg_cnt = ctx->instr->arg2.uint;
    DISPPARAMS dp;
    HRESULT hres;

    FUNC2("%s\n", FUNC4(arg));

    if(arg_cnt) {
        FUNC1("arguments not supported\n");
        return E_NOTIMPL;
    }

    hres = FUNC5(ctx, 0, NULL);
    if(FUNC0(hres))
        return hres;

    FUNC7(ctx, 0, TRUE, &dp);
    hres = FUNC3(ctx, ctx->instr->arg1.bstr, DISPATCH_PROPERTYPUTREF, &dp);
    if(FUNC0(hres))
        return hres;

    FUNC6(ctx, 1);
    return S_OK;
}