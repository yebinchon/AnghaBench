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
typedef  int /*<<< orphan*/  ei ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  TYPE_1__ DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYGET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  fdexNameCaseSensitive ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(IDispatchEx *dispex)
{
    DISPPARAMS dp = {NULL,NULL,0,0};
    EXCEPINFO ei;
    BSTR str;
    DISPID id;
    VARIANT v;
    HRESULT hres;

    str = FUNC6("ActiveXObject");
    hres = FUNC0(dispex, str, fdexNameCaseSensitive, &id);
    FUNC2(str);
    FUNC8(hres == S_OK, "GetDispID failed: %08x\n", hres);

    str = FUNC6("Math");
    hres = FUNC0(dispex, str, fdexNameCaseSensitive, &id);
    FUNC2(str);
    FUNC8(hres == S_OK, "GetDispID failed: %08x\n", hres);

    FUNC7(&ei, 0, sizeof(ei));
    hres = FUNC1(dispex, id, 0, DISPATCH_PROPERTYGET, &dp, &v, &ei, NULL);
    FUNC8(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC8(FUNC4(&v) == VT_DISPATCH, "V_VT(v) = %d\n", FUNC4(&v));
    FUNC8(FUNC3(&v) != NULL, "V_DISPATCH(v) = NULL\n");
    FUNC5(&v);

    str = FUNC6("String");
    hres = FUNC0(dispex, str, fdexNameCaseSensitive, &id);
    FUNC2(str);
    FUNC8(hres == S_OK, "GetDispID failed: %08x\n", hres);

    FUNC7(&ei, 0, sizeof(ei));
    hres = FUNC1(dispex, id, 0, DISPATCH_PROPERTYGET, &dp, &v, &ei, NULL);
    FUNC8(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC8(FUNC4(&v) == VT_DISPATCH, "V_VT(v) = %d\n", FUNC4(&v));
    FUNC8(FUNC3(&v) != NULL, "V_DISPATCH(v) = NULL\n");
    FUNC5(&v);
}