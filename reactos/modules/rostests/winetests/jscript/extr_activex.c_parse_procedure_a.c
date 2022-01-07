
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int IActiveScriptParseProcedure2 ;
typedef int IActiveScriptParse ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IActiveScriptParseProcedure2_ParseProcedureText (int *,int ,int *,int *,int *,int *,int *,int ,int ,int ,int **) ;
 int IActiveScriptParseProcedure2_Release (int *) ;
 scalar_t__ IActiveScriptParse_QueryInterface (int *,int *,void**) ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 int IID_IActiveScriptParseProcedure2 ;
 int IID_IDispatchEx ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static IDispatchEx *parse_procedure_a(IActiveScriptParse *parser, const char *src)
{
    IActiveScriptParseProcedure2 *parse_proc;
    IDispatchEx *dispex;
    IDispatch *disp;
    BSTR str;
    HRESULT hres;

    hres = IActiveScriptParse_QueryInterface(parser, &IID_IActiveScriptParseProcedure2, (void**)&parse_proc);
    ok(hres == S_OK, "Could not get IActiveScriptParseProcedure2: %08x\n", hres);

    str = a2bstr(src);
    hres = IActiveScriptParseProcedure2_ParseProcedureText(parse_proc, str, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0, 0, &disp);
    SysFreeString(str);
    IActiveScriptParseProcedure2_Release(parse_proc);
    ok(hres == S_OK, "ParseProcedureText failed: %08x\n", hres);
    ok(disp != ((void*)0), "disp == NULL\n");

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    IDispatch_Release(disp);
    ok(hres == S_OK, "Could not get IDispatchEx iface: %08x\n", hres);

    return dispex;
}
