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
struct TYPE_12__ {int /*<<< orphan*/  script; TYPE_3__* instr; } ;
typedef  TYPE_4__ exec_ctx_t ;
struct TYPE_10__ {unsigned int uint; } ;
struct TYPE_9__ {int /*<<< orphan*/  bstr; } ;
struct TYPE_11__ {TYPE_2__ arg2; TYPE_1__ arg1; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYPUTREF ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VBDISP_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(exec_ctx_t *ctx)
{
    BSTR identifier = ctx->instr->arg1.bstr;
    const unsigned arg_cnt = ctx->instr->arg2.uint;
    IDispatch *obj;
    DISPPARAMS dp;
    DISPID id;
    HRESULT hres;

    FUNC3("%s\n", FUNC4(identifier));

    if(arg_cnt) {
        FUNC1("arguments not supported\n");
        return E_NOTIMPL;
    }

    hres = FUNC7(ctx, 1, &obj);
    if(FUNC0(hres))
        return hres;

    if(!obj) {
        FUNC1("NULL obj\n");
        return E_FAIL;
    }

    hres = FUNC7(ctx, 0, NULL);
    if(FUNC0(hres))
        return hres;

    hres = FUNC5(obj, identifier, VBDISP_SET, FALSE, &id);
    if(FUNC2(hres)) {
        FUNC9(ctx, arg_cnt, TRUE, &dp);
        hres = FUNC6(ctx->script, obj, id, DISPATCH_PROPERTYPUTREF, &dp);
    }
    if(FUNC0(hres))
        return hres;

    FUNC8(ctx, 2);
    return S_OK;
}