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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {unsigned int cNamedArgs; scalar_t__* rgdispidNamedArgs; int /*<<< orphan*/ * rgvarg; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DISPPARAMS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int DISPATCH_PROPERTYPUT ; 
 int DISPATCH_PROPERTYPUTREF ; 
 scalar_t__ DISPID_PROPERTYPUT ; 
 int /*<<< orphan*/  DISP_E_EXCEPTION ; 
 int /*<<< orphan*/  DISP_E_PARAMNOTOPTIONAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int VT_BYREF ; 
 int VT_DISPATCH ; 
 int VT_VARIANT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, const DISPPARAMS *dp, WORD flags, VARIANT *v, BOOL *is_owned)
{
    unsigned i;

    for(i=0; i < dp->cNamedArgs; i++) {
        if(dp->rgdispidNamedArgs[i] == DISPID_PROPERTYPUT)
            break;
    }
    if(i == dp->cNamedArgs) {
        FUNC4("no value to set\n");
        return DISP_E_PARAMNOTOPTIONAL;
    }

    *v = dp->rgvarg[i];
    if(FUNC3(v) == (VT_VARIANT|VT_BYREF))
        *v = *FUNC2(v);
    *is_owned = FALSE;

    if(FUNC3(v) == VT_DISPATCH) {
        if(!(flags & DISPATCH_PROPERTYPUTREF)) {
            HRESULT hres;

            hres = FUNC6(ctx, FUNC1(v), v);
            if(FUNC0(hres))
                return hres;

            *is_owned = TRUE;
        }
    }else if(!(flags & DISPATCH_PROPERTYPUT)) {
        FUNC4("%s can't be assigned without DISPATCH_PROPERTYPUT flag\n", FUNC5(v));
        return DISP_E_EXCEPTION;
    }

    return S_OK;
}