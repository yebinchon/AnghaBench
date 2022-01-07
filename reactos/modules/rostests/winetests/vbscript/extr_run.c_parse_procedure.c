
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int IActiveScriptParseProcedure2 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IActiveScriptParseProcedure2_ParseProcedureText (int *,int ,int *,int ,int *,int *,char const*,int ,int ,int,int **) ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 int IID_IDispatchEx ;
 int SCRIPTPROC_HOSTMANAGESSOURCE ;
 int SCRIPTPROC_IMPLICIT_PARENTS ;
 int SCRIPTPROC_IMPLICIT_THIS ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int emptyW ;
 int ok (int,char*,...) ;

__attribute__((used)) static IDispatchEx *parse_procedure(IActiveScriptParseProcedure2 *parse_proc, const char *src)
{
    IDispatchEx *dispex;
    IDispatch *disp;
    BSTR str;
    HRESULT hres;

    static const WCHAR delimiterW[] = {'\"',0};

    str = a2bstr(src);
    hres = IActiveScriptParseProcedure2_ParseProcedureText(parse_proc, str, ((void*)0), emptyW, ((void*)0), ((void*)0), delimiterW, 0, 0,
            SCRIPTPROC_HOSTMANAGESSOURCE|SCRIPTPROC_IMPLICIT_THIS|SCRIPTPROC_IMPLICIT_PARENTS, &disp);
    SysFreeString(str);
    ok(hres == S_OK, "ParseProcedureText failed: %08x\n", hres);
    ok(disp != ((void*)0), "disp = NULL\n");

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    IDispatch_Release(disp);
    ok(hres == S_OK, "Could not get IDispatchEx iface: %08x\n", hres);

    return dispex;
}
