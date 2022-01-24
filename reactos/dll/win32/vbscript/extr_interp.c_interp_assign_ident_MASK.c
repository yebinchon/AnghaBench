#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* instr; } ;
typedef  TYPE_4__ exec_ctx_t ;
struct TYPE_10__ {unsigned int uint; } ;
struct TYPE_9__ {int /*<<< orphan*/  bstr; } ;
struct TYPE_11__ {TYPE_2__ arg2; TYPE_1__ arg1; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPPARAMS ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(exec_ctx_t *ctx)
{
    const BSTR arg = ctx->instr->arg1.bstr;
    const unsigned arg_cnt = ctx->instr->arg2.uint;
    DISPPARAMS dp;
    HRESULT hres;

    FUNC1("%s\n", FUNC3(arg));

    FUNC5(ctx, arg_cnt, TRUE, &dp);
    hres = FUNC2(ctx, arg, DISPATCH_PROPERTYPUT, &dp);
    if(FUNC0(hres))
        return hres;

    FUNC4(ctx, arg_cnt+1);
    return S_OK;
}