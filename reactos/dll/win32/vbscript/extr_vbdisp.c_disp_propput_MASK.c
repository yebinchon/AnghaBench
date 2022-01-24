#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lcid; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ EXCEPINFO ;
typedef  int /*<<< orphan*/  DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

HRESULT FUNC6(script_ctx_t *ctx, IDispatch *disp, DISPID id, WORD flags, DISPPARAMS *dp)
{
    IDispatchEx *dispex;
    EXCEPINFO ei = {0};
    HRESULT hres;

    hres = FUNC3(disp, &IID_IDispatchEx, (void**)&dispex);
    if(FUNC4(hres)) {
        hres = FUNC0(dispex, id, ctx->lcid, flags, dp, NULL, &ei, NULL /* FIXME! */);
        FUNC1(dispex);
    }else {
        ULONG err = 0;

        FUNC5("using IDispatch\n");
        hres = FUNC2(disp, id, &IID_NULL, ctx->lcid, flags, dp, NULL, &ei, &err);
    }

    return hres;
}