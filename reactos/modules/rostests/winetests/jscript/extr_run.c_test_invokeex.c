
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {int * member_0; } ;
typedef int IDispatchEx ;
typedef int IActiveScript ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;
typedef int DISPID ;
typedef int BSTR ;


 int DISPATCH_METHOD ;
 int DISPATCH_PROPERTYGET ;
 int E_UNEXPECTED ;
 int IActiveScript_Release (int *) ;
 int IActiveScript_SetScriptState (int *,int ) ;
 int IDispatchEx_GetDispID (int *,int ,int ,int *) ;
 int IDispatchEx_InvokeEx (int *,int ,int ,int ,TYPE_1__*,int *,int *,int *) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_QueryInterface (int ,int *,void**) ;
 int IID_IDispatchEx ;
 int SCRIPTSTATE_UNINITIALIZED ;
 int S_OK ;
 int SysFreeString (int ) ;
 int VT_DISPATCH ;
 int VT_I4 ;
 int V_DISPATCH (int *) ;
 int V_I4 (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int a2bstr (char*) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int) ;
 int parse_script_expr (char*,int *,int **) ;

__attribute__((used)) static void test_invokeex(void)
{
    DISPID func_id, prop_id;
    DISPPARAMS dp = {((void*)0)};
    IActiveScript *script;
    IDispatchEx *dispex;
    VARIANT v;
    BSTR str;
    HRESULT hres;

    hres = parse_script_expr("var o = {func: function() {return 3;}, prop: 6}; o", &v, &script);
    ok(hres == S_OK, "parse_script_expr failed: %08x\n", hres);
    ok(V_VT(&v) == VT_DISPATCH, "V_VT(v) = %d\n", V_VT(&v));

    hres = IDispatch_QueryInterface(V_DISPATCH(&v), &IID_IDispatchEx, (void**)&dispex);
    ok(hres == S_OK, "Could not get IDispatchEx iface: %08x\n", hres);
    VariantClear(&v);

    str = a2bstr("func");
    hres = IDispatchEx_GetDispID(dispex, str, 0, &func_id);
    SysFreeString(str);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);

    str = a2bstr("prop");
    hres = IDispatchEx_GetDispID(dispex, str, 0, &prop_id);
    SysFreeString(str);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);

    hres = IDispatchEx_InvokeEx(dispex, func_id, 0, DISPATCH_METHOD, &dp, &v, ((void*)0), ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&v) == VT_I4, "V_VT(v) = %d\n", V_VT(&v));
    ok(V_I4(&v) == 3, "V_I4(v) = %d\n", V_I4(&v));

    hres = IDispatchEx_InvokeEx(dispex, prop_id, 0, DISPATCH_PROPERTYGET, &dp, &v, ((void*)0), ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&v) == VT_I4, "V_VT(v) = %d\n", V_VT(&v));
    ok(V_I4(&v) == 6, "V_I4(v) = %d\n", V_I4(&v));

    hres = IActiveScript_SetScriptState(script, SCRIPTSTATE_UNINITIALIZED);
    ok(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    str = a2bstr("func");
    hres = IDispatchEx_GetDispID(dispex, str, 0, &func_id);
    SysFreeString(str);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);

    hres = IDispatchEx_InvokeEx(dispex, func_id, 0, DISPATCH_METHOD, &dp, &v, ((void*)0), ((void*)0));
    ok(hres == E_UNEXPECTED || broken(hres == 0x800a1393), "InvokeEx failed: %08x\n", hres);

    hres = IDispatchEx_InvokeEx(dispex, prop_id, 0, DISPATCH_PROPERTYGET, &dp, &v, ((void*)0), ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&v) == VT_I4, "V_VT(v) = %d\n", V_VT(&v));
    ok(V_I4(&v) == 6, "V_I4(v) = %d\n", V_I4(&v));

    IDispatchEx_Release(dispex);
    IActiveScript_Release(script);
}
