#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t tid; int /*<<< orphan*/  prop_vt; int /*<<< orphan*/  put_vtbl_off; } ;
typedef  TYPE_1__ func_info_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_9__ {int cArgs; int cNamedArgs; scalar_t__* rgdispidNamedArgs; int /*<<< orphan*/ * rgvarg; } ;
struct TYPE_8__ {int /*<<< orphan*/  outer; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IServiceProvider ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DispatchEx ;
typedef  TYPE_3__ DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  BUILTIN_TYPES_SWITCH ; 
 scalar_t__ DISPID_PROPERTYPUT ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_VARIANT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tid_ids ; 

__attribute__((used)) static HRESULT FUNC8(DispatchEx *This, func_info_t *func, DISPPARAMS *dp, IServiceProvider *caller)
{
    VARIANT *v, tmpv;
    IUnknown *iface;
    HRESULT hres;

    if(dp->cArgs != 1 || (dp->cNamedArgs == 1 && *dp->rgdispidNamedArgs != DISPID_PROPERTYPUT)
            || dp->cNamedArgs > 1) {
        FUNC1("invalid args\n");
        return E_INVALIDARG;
    }

    if(!func->put_vtbl_off) {
        FUNC1("No setter\n");
        return E_FAIL;
    }

    v = dp->rgvarg;
    if(func->prop_vt != VT_VARIANT && FUNC5(v) != func->prop_vt) {
        hres = FUNC7(&tmpv, v, func->prop_vt, caller);
        if(FUNC0(hres))
            return hres;
        v = &tmpv;
    }

    hres = FUNC2(This->outer, tid_ids[func->tid], (void**)&iface);
    if(FUNC4(hres)) {
        switch(func->prop_vt) {
#define CASE_VT(vt,type,access) \
        case vt: \
            hres = ((HRESULT (WINAPI*)(IUnknown*,type))((void**)iface->lpVtbl)[func->put_vtbl_off])(iface,access(v)); \
            break
        BUILTIN_TYPES_SWITCH;
#undef CASE_VT
        default:
            FUNC1("Unimplemented vt %d\n", func->prop_vt);
            hres = E_NOTIMPL;
        }

        FUNC3(iface);
    }

    if(v == &tmpv)
        FUNC6(v);
    return hres;
}