#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ type; } ;
typedef  TYPE_4__ ref_t ;
struct TYPE_16__ {TYPE_1__* func; TYPE_3__* instr; } ;
typedef  TYPE_5__ exec_ctx_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_13__ {int /*<<< orphan*/  bstr; } ;
struct TYPE_14__ {TYPE_2__ arg1; } ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC_GLOBAL ; 
 scalar_t__ REF_NONE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VBDISP_CALLGET ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static HRESULT FUNC9(exec_ctx_t *ctx)
{
    BSTR arg = ctx->instr->arg1.bstr;
    VARIANT *v;
    ref_t ref;
    HRESULT hres;

    FUNC2("%s\n", FUNC5(arg));

    FUNC4(ctx->func->type == FUNC_GLOBAL);

    hres = FUNC6(ctx, arg, VBDISP_CALLGET, &ref);
    if(FUNC0(hres))
        return hres;

    if(ref.type != REF_NONE) {
        FUNC1("%s already defined\n", FUNC5(arg));
        return E_FAIL;
    }

    hres = FUNC7(ctx, 0);
    if(FUNC0(hres))
        return hres;

    hres = FUNC3(ctx, arg, TRUE, &v);
    if(FUNC0(hres))
        return hres;

    *v = *FUNC8(ctx);
    return S_OK;
}