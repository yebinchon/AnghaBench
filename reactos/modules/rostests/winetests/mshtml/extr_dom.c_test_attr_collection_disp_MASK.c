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
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  IHTMLDOMAttribute ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  TYPE_1__ DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_IHTMLDOMAttribute ; 
 int /*<<< orphan*/  INVOKE_PROPERTYGET ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  fdexNameCaseSensitive ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC13(IDispatch *disp)
{
    IDispatchEx *dispex;
    IHTMLDOMAttribute *attr;
    DISPPARAMS dp = {NULL, NULL, 0, 0};
    VARIANT var;
    EXCEPINFO ei;
    DISPID id;
    BSTR bstr;
    HRESULT hres;

    hres = FUNC3(disp, &IID_IDispatchEx, (void**)&dispex);
    FUNC11(hres == S_OK, "QueryInterface failed: %08x\n", hres);

    bstr = FUNC10("0");
    hres = FUNC0(dispex, bstr, fdexNameCaseSensitive, &id);
    FUNC11(hres == S_OK, "GetDispID failed: %08x\n", hres);
    FUNC5(bstr);

    FUNC9(&var);
    hres = FUNC1(dispex, id, LOCALE_NEUTRAL, INVOKE_PROPERTYGET, &dp, &var, &ei, NULL);
    FUNC11(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC11(FUNC7(&var) == VT_DISPATCH, "V_VT(var)=%d\n", FUNC7(&var));
    FUNC11(FUNC6(&var) != NULL, "V_DISPATCH(var) == NULL\n");
    FUNC8(&var);

    bstr = FUNC10("attr1");
    hres = FUNC0(dispex, bstr, fdexNameCaseSensitive, &id);
    FUNC11(hres == S_OK, "GetDispID failed: %08x\n", hres);
    FUNC5(bstr);

    FUNC9(&var);
    hres = FUNC1(dispex, id, LOCALE_NEUTRAL, INVOKE_PROPERTYGET, &dp, &var, &ei, NULL);
    FUNC11(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC11(FUNC7(&var) == VT_DISPATCH, "V_VT(var)=%d\n", FUNC7(&var));
    FUNC11(FUNC6(&var) != NULL, "V_DISPATCH(var) == NULL\n");
    hres = FUNC3(FUNC6(&var), &IID_IHTMLDOMAttribute, (void**)&attr);
    FUNC11(hres == S_OK, "QueryInterface failed: %08x\n", hres);

    FUNC12(attr, "attr1");

    FUNC4(attr);
    FUNC8(&var);

    FUNC2(dispex);
}