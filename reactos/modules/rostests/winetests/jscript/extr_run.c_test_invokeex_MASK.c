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
struct TYPE_3__ {int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  int HRESULT ;
typedef  TYPE_1__ DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  DISPATCH_PROPERTYGET ; 
 int E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  SCRIPTSTATE_UNINITIALIZED ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int VT_DISPATCH ; 
 int VT_I4 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 
 int FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC15(void)
{
    DISPID func_id, prop_id;
    DISPPARAMS dp = {NULL};
    IActiveScript *script;
    IDispatchEx *dispex;
    VARIANT v;
    BSTR str;
    HRESULT hres;

    hres = FUNC14("var o = {func: function() {return 3;}, prop: 6}; o", &v, &script);
    FUNC13(hres == S_OK, "parse_script_expr failed: %08x\n", hres);
    FUNC13(FUNC9(&v) == VT_DISPATCH, "V_VT(v) = %d\n", FUNC9(&v));

    hres = FUNC5(FUNC7(&v), &IID_IDispatchEx, (void**)&dispex);
    FUNC13(hres == S_OK, "Could not get IDispatchEx iface: %08x\n", hres);
    FUNC10(&v);

    str = FUNC11("func");
    hres = FUNC2(dispex, str, 0, &func_id);
    FUNC6(str);
    FUNC13(hres == S_OK, "GetDispID failed: %08x\n", hres);

    str = FUNC11("prop");
    hres = FUNC2(dispex, str, 0, &prop_id);
    FUNC6(str);
    FUNC13(hres == S_OK, "GetDispID failed: %08x\n", hres);

    hres = FUNC3(dispex, func_id, 0, DISPATCH_METHOD, &dp, &v, NULL, NULL);
    FUNC13(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC13(FUNC9(&v) == VT_I4, "V_VT(v) = %d\n", FUNC9(&v));
    FUNC13(FUNC8(&v) == 3, "V_I4(v) = %d\n", FUNC8(&v));

    hres = FUNC3(dispex, prop_id, 0, DISPATCH_PROPERTYGET, &dp, &v, NULL, NULL);
    FUNC13(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC13(FUNC9(&v) == VT_I4, "V_VT(v) = %d\n", FUNC9(&v));
    FUNC13(FUNC8(&v) == 6, "V_I4(v) = %d\n", FUNC8(&v));

    hres = FUNC1(script, SCRIPTSTATE_UNINITIALIZED);
    FUNC13(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    str = FUNC11("func");
    hres = FUNC2(dispex, str, 0, &func_id);
    FUNC6(str);
    FUNC13(hres == S_OK, "GetDispID failed: %08x\n", hres);

    hres = FUNC3(dispex, func_id, 0, DISPATCH_METHOD, &dp, &v, NULL, NULL);
    FUNC13(hres == E_UNEXPECTED || FUNC12(hres == 0x800a1393), "InvokeEx failed: %08x\n", hres);

    hres = FUNC3(dispex, prop_id, 0, DISPATCH_PROPERTYGET, &dp, &v, NULL, NULL);
    FUNC13(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    FUNC13(FUNC9(&v) == VT_I4, "V_VT(v) = %d\n", FUNC9(&v));
    FUNC13(FUNC8(&v) == 6, "V_I4(v) = %d\n", FUNC8(&v));

    FUNC4(dispex);
    FUNC0(script);
}