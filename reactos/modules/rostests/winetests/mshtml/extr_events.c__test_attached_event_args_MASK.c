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
typedef  scalar_t__ WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {int cArgs; int /*<<< orphan*/ * rgvarg; int /*<<< orphan*/  rgdispidNamedArgs; int /*<<< orphan*/  cNamedArgs; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLEventObj ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  TYPE_1__ DISPPARAMS ;
typedef  scalar_t__ DISPID ;

/* Variables and functions */
 scalar_t__ DISPATCH_METHOD ; 
 scalar_t__ DISPID_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VT_DISPATCH ; 
 int /*<<< orphan*/  VT_EMPTY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(unsigned line, DISPID id, WORD wFlags, DISPPARAMS *pdp,
        VARIANT *pvarRes, EXCEPINFO *pei)
{
    IHTMLEventObj *event;

    FUNC5(id == DISPID_VALUE, "id = %d\n", id);
    FUNC5(wFlags == DISPATCH_METHOD, "wFlags = %x\n", wFlags);
    FUNC5(pdp != NULL, "pDispParams == NULL\n");
    FUNC5(pdp->cArgs == 1, "pdp->cArgs = %d\n", pdp->cArgs);
    FUNC5(!pdp->cNamedArgs, "pdp->cNamedArgs = %d\n", pdp->cNamedArgs);
    FUNC5(!pdp->rgdispidNamedArgs, "pdp->rgdispidNamedArgs = %p\n", pdp->rgdispidNamedArgs);
    FUNC5(pdp->rgvarg != NULL, "rgvarg = NULL\n");
    FUNC5(pvarRes != NULL, "pvarRes = NULL\n");
    FUNC5(pei != NULL, "pei = NULL\n");
    FUNC5(FUNC2(pvarRes) == VT_EMPTY, "V_VT(pVarRes) = %d\n", FUNC2(pvarRes));
    FUNC5(FUNC2(pdp->rgvarg) == VT_DISPATCH, "V_VT(pdp->rgvarg) = %d\n", FUNC2(pdp->rgvarg));
    FUNC5(FUNC1(pdp->rgvarg) != NULL, "V_DISPATCH(pdp->rgvarg) = %p\n", FUNC1(pdp->rgvarg));

    event = FUNC3(line);
    FUNC5(FUNC4((IUnknown*)event, (IUnknown*)FUNC1(pdp->rgvarg)), "event != arg0\n");
    FUNC0(event);
}