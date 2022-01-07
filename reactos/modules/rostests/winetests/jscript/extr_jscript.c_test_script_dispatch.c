
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ei ;
typedef int VARIANT ;
struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int IDispatchEx ;
typedef scalar_t__ HRESULT ;
typedef int EXCEPINFO ;
typedef TYPE_1__ DISPPARAMS ;
typedef int DISPID ;
typedef int BSTR ;


 int DISPATCH_PROPERTYGET ;
 scalar_t__ IDispatchEx_GetDispID (int *,int ,int ,int *) ;
 scalar_t__ IDispatchEx_InvokeEx (int *,int ,int ,int ,TYPE_1__*,int *,int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 scalar_t__ VT_DISPATCH ;
 int * V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int a2bstr (char*) ;
 int fdexNameCaseSensitive ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_script_dispatch(IDispatchEx *dispex)
{
    DISPPARAMS dp = {((void*)0),((void*)0),0,0};
    EXCEPINFO ei;
    BSTR str;
    DISPID id;
    VARIANT v;
    HRESULT hres;

    str = a2bstr("ActiveXObject");
    hres = IDispatchEx_GetDispID(dispex, str, fdexNameCaseSensitive, &id);
    SysFreeString(str);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);

    str = a2bstr("Math");
    hres = IDispatchEx_GetDispID(dispex, str, fdexNameCaseSensitive, &id);
    SysFreeString(str);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);

    memset(&ei, 0, sizeof(ei));
    hres = IDispatchEx_InvokeEx(dispex, id, 0, DISPATCH_PROPERTYGET, &dp, &v, &ei, ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&v) == VT_DISPATCH, "V_VT(v) = %d\n", V_VT(&v));
    ok(V_DISPATCH(&v) != ((void*)0), "V_DISPATCH(v) = NULL\n");
    VariantClear(&v);

    str = a2bstr("String");
    hres = IDispatchEx_GetDispID(dispex, str, fdexNameCaseSensitive, &id);
    SysFreeString(str);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);

    memset(&ei, 0, sizeof(ei));
    hres = IDispatchEx_InvokeEx(dispex, id, 0, DISPATCH_PROPERTYGET, &dp, &v, &ei, ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&v) == VT_DISPATCH, "V_VT(v) = %d\n", V_VT(&v));
    ok(V_DISPATCH(&v) != ((void*)0), "V_DISPATCH(v) = NULL\n");
    VariantClear(&v);
}
