
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
typedef int VARIANT ;
struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int LONG ;
typedef int IUnknown ;
typedef int IHTMLDOMNode ;
typedef int IHTMLDOMChildrenCollection ;
typedef int IDispatchEx ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef TYPE_1__ DISPPARAMS ;
typedef int DISPID ;
typedef int BSTR ;


 int DISP_E_UNKNOWNNAME ;
 int IDispatchEx_GetDispID (int *,int ,int ,int *) ;
 int IDispatchEx_InvokeEx (int *,int ,int ,int ,TYPE_1__*,int *,int *,int *) ;
 int IDispatchEx_Release (int *) ;
 int IHTMLDOMChildrenCollection_QueryInterface (int *,int *,void**) ;
 int IHTMLDOMNode_Release (int *) ;
 int IID_IDispatchEx ;
 int INVOKE_PROPERTYGET ;
 int LOCALE_NEUTRAL ;
 int S_OK ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 scalar_t__ VT_DISPATCH ;
 int * V_DISPATCH (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int fdexNameCaseSensitive ;
 int * get_node_iface (int *) ;
 int get_node_type (int *) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_child_col_disp(IHTMLDOMChildrenCollection *col)
{
    IDispatchEx *dispex;
    IHTMLDOMNode *node;
    DISPPARAMS dp = {((void*)0), ((void*)0), 0, 0};
    VARIANT var;
    EXCEPINFO ei;
    LONG type;
    DISPID id;
    BSTR bstr;
    HRESULT hres;

    static const WCHAR w0[] = {'0',0};
    static const WCHAR w100[] = {'1','0','0',0};

    hres = IHTMLDOMChildrenCollection_QueryInterface(col, &IID_IDispatchEx, (void**)&dispex);
    ok(hres == S_OK, "Could not get IDispatchEx: %08x\n", hres);

    bstr = SysAllocString(w0);
    hres = IDispatchEx_GetDispID(dispex, bstr, fdexNameCaseSensitive, &id);
    ok(hres == S_OK, "GetDispID failed: %08x\n", hres);
    SysFreeString(bstr);

    VariantInit(&var);
    hres = IDispatchEx_InvokeEx(dispex, id, LOCALE_NEUTRAL, INVOKE_PROPERTYGET, &dp, &var, &ei, ((void*)0));
    ok(hres == S_OK, "InvokeEx failed: %08x\n", hres);
    ok(V_VT(&var) == VT_DISPATCH, "V_VT(var)=%d\n", V_VT(&var));
    ok(V_DISPATCH(&var) != ((void*)0), "V_DISPATCH(var) == NULL\n");
    node = get_node_iface((IUnknown*)V_DISPATCH(&var));
    type = get_node_type((IUnknown*)node);
    ok(type == 3, "type=%d\n", type);
    IHTMLDOMNode_Release(node);
    VariantClear(&var);

    bstr = SysAllocString(w100);
    hres = IDispatchEx_GetDispID(dispex, bstr, fdexNameCaseSensitive, &id);
    ok(hres == DISP_E_UNKNOWNNAME, "GetDispID failed: %08x, expected DISP_E_UNKNOWNNAME\n", hres);
    SysFreeString(bstr);

    IDispatchEx_Release(dispex);
}
