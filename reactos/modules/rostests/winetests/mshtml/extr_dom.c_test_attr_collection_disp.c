
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int IHTMLDOMAttribute ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int EXCEPINFO ;
typedef TYPE_1__ DISPPARAMS ;
typedef int DISPID ;
typedef int BSTR ;


 scalar_t__ IDispatchEx_GetDispID (int *,int ,int ,int *) ;
 scalar_t__ IDispatchEx_InvokeEx (int *,int ,int ,int ,TYPE_1__*,int *,int *,int *) ;
 int IDispatchEx_Release (int *) ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IHTMLDOMAttribute_Release (int *) ;
 int IID_IDispatchEx ;
 int IID_IHTMLDOMAttribute ;
 int INVOKE_PROPERTYGET ;
 int LOCALE_NEUTRAL ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 scalar_t__ VT_DISPATCH ;
 int * V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int a2bstr (char*) ;
 int fdexNameCaseSensitive ;
 int ok (int,char*,...) ;
 int test_attr_node_name (int *,char*) ;

__attribute__((used)) static void test_attr_collection_disp(IDispatch *disp)
{
    IDispatchEx *dispex;
    IHTMLDOMAttribute *attr;
    DISPPARAMS dp = {((void*)0), ((void*)0), 0, 0};
    VARIANT var;
    EXCEPINFO ei;
    DISPID id;
    BSTR bstr;
    HRESULT hres;

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    ok(hres == S_OK, "QueryInterface failed: %08x\n", hres);

    bstr = a2bstr("0");
    hres = IDispatchEx_GetDispID(dispex, bstr, fdexNameCaseSensitive, &id);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);
    SysFreeString(bstr);

    VariantInit(&var);
    hres = IDispatchEx_InvokeEx(dispex, id, LOCALE_NEUTRAL, INVOKE_PROPERTYGET, &dp, &var, &ei, ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&var) == VT_DISPATCH, "V_VT(var)=%d\n", V_VT(&var));
    ok(V_DISPATCH(&var) != ((void*)0), "V_DISPATCH(var) == NULL\n");
    VariantClear(&var);

    bstr = a2bstr("attr1");
    hres = IDispatchEx_GetDispID(dispex, bstr, fdexNameCaseSensitive, &id);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);
    SysFreeString(bstr);

    VariantInit(&var);
    hres = IDispatchEx_InvokeEx(dispex, id, LOCALE_NEUTRAL, INVOKE_PROPERTYGET, &dp, &var, &ei, ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&var) == VT_DISPATCH, "V_VT(var)=%d\n", V_VT(&var));
    ok(V_DISPATCH(&var) != ((void*)0), "V_DISPATCH(var) == NULL\n");
    hres = IDispatch_QueryInterface(V_DISPATCH(&var), &IID_IHTMLDOMAttribute, (void**)&attr);
    ok(hres == S_OK, "QueryInterface failed: %08x\n", hres);

    test_attr_node_name(attr, "attr1");

    IHTMLDOMAttribute_Release(attr);
    VariantClear(&var);

    IDispatchEx_Release(dispex);
}
