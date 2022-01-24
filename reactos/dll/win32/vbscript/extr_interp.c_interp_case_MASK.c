#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  v; } ;
typedef  TYPE_3__ variant_val_t ;
struct TYPE_16__ {TYPE_2__* instr; } ;
typedef  TYPE_4__ exec_ctx_t ;
struct TYPE_13__ {unsigned int uint; } ;
struct TYPE_14__ {TYPE_1__ arg1; } ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const) ; 
 scalar_t__ VARCMP_EQ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(exec_ctx_t *ctx)
{
    const unsigned arg = ctx->instr->arg1.uint;
    variant_val_t v;
    HRESULT hres;

    FUNC1("%d\n", arg);

    hres = FUNC4(ctx, &v);
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx, FUNC6(ctx, 0), v.v);
    FUNC3(&v);
    if(FUNC0(hres))
        return hres;

    if(hres == VARCMP_EQ) {
        FUNC5(ctx, 1);
        FUNC2(ctx, arg);
    }else {
        ctx->instr++;
    }

    return S_OK;
}