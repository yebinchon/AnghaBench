#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t tid; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ func_info_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/  outer; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  TYPE_2__ DispatchEx ;
typedef  int /*<<< orphan*/  DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * tid_ids ; 

__attribute__((used)) static HRESULT FUNC7(DispatchEx *This, func_info_t *func, WORD flags, DISPPARAMS *dp, VARIANT *res,
        EXCEPINFO *ei)
{
    ITypeInfo *ti;
    IUnknown *unk;
    UINT argerr=0;
    HRESULT hres;

    hres = FUNC6(func->tid, &ti);
    if(FUNC1(hres)) {
        FUNC0("Could not get type info: %08x\n", hres);
        return hres;
    }

    hres = FUNC3(This->outer, tid_ids[func->tid], (void**)&unk);
    if(FUNC1(hres)) {
        FUNC0("Could not get iface %s: %08x\n", FUNC5(tid_ids[func->tid]), hres);
        return E_FAIL;
    }

    hres = FUNC2(ti, unk, func->id, flags, dp, res, ei, &argerr);

    FUNC4(unk);
    return hres;
}