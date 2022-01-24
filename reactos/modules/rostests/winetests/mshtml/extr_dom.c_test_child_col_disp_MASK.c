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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDOMNode ;
typedef  int /*<<< orphan*/  IHTMLDOMChildrenCollection ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  TYPE_1__ DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int DISP_E_UNKNOWNNAME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  INVOKE_PROPERTYGET ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fdexNameCaseSensitive ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 

__attribute__((used)) static void FUNC14(IHTMLDOMChildrenCollection *col)
{
    IDispatchEx *dispex;
    IHTMLDOMNode *node;
    DISPPARAMS dp = {NULL, NULL, 0, 0};
    VARIANT var;
    EXCEPINFO ei;
    LONG type;
    DISPID id;
    BSTR bstr;
    HRESULT hres;

    static const WCHAR w0[] = {'0',0};
    static const WCHAR w100[] = {'1','0','0',0};

    hres = FUNC3(col, &IID_IDispatchEx, (void**)&dispex);
    FUNC13(hres == S_OK, "Could not get IDispatchEx: %08x\n", hres);

    bstr = FUNC5(w0);
    hres = FUNC0(dispex, bstr, fdexNameCaseSensitive, &id);
    FUNC13(hres == S_OK, "GetDispID failed: %08x\n", hres);
    FUNC6(bstr);

    FUNC10(&var);
    hres = FUNC1(dispex, id, LOCALE_NEUTRAL, INVOKE_PROPERTYGET, &dp, &var, &ei, NULL);
    FUNC13(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC13(FUNC8(&var) == VT_DISPATCH, "V_VT(var)=%d\n", FUNC8(&var));
    FUNC13(FUNC7(&var) != NULL, "V_DISPATCH(var) == NULL\n");
    node = FUNC11((IUnknown*)FUNC7(&var));
    type = FUNC12((IUnknown*)node);
    FUNC13(type == 3, "type=%d\n", type);
    FUNC4(node);
    FUNC9(&var);

    bstr = FUNC5(w100);
    hres = FUNC0(dispex, bstr, fdexNameCaseSensitive, &id);
    FUNC13(hres == DISP_E_UNKNOWNNAME, "GetDispID failed: %08x, expected DISP_E_UNKNOWNNAME\n", hres);
    FUNC6(bstr);

    FUNC2(dispex);
}