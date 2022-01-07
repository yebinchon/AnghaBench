
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int IDispatch ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BSTR ;


 scalar_t__ FAILED (scalar_t__) ;
 int Global ;
 scalar_t__ IActiveScriptParse_ParseScriptText (int *,int ,int *,int *,int const*,int ,int ,int ,int *,int *) ;
 scalar_t__ IActiveScriptParse_Release (int *) ;
 int IActiveScript_Close (int *) ;
 scalar_t__ IActiveScript_GetScriptDispatch (int *,int *,int **) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 int IActiveScript_Release (int *) ;
 int IDispatch_Release (int *) ;
 int IID_IActiveScriptParse ;
 scalar_t__ S_OK ;
 int * create_and_init_script (int ) ;
 int ok (int,char*,...) ;
 scalar_t__ test_counter ;

__attribute__((used)) static HRESULT parse_script(DWORD flags, BSTR script_str, const WCHAR *delim)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    IDispatch *script_disp;
    LONG ref;
    HRESULT hres;

    engine = create_and_init_script(flags);
    if(!engine)
        return S_OK;

    hres = IActiveScript_QueryInterface(engine, &IID_IActiveScriptParse, (void**)&parser);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);
    if (FAILED(hres))
    {
        IActiveScript_Release(engine);
        return hres;
    }

    hres = IActiveScript_GetScriptDispatch(engine, ((void*)0), &script_disp);
    ok(hres == S_OK, "GetScriptDispatch failed: %08x\n", hres);
    ok(script_disp != ((void*)0), "script_disp == NULL\n");
    ok(script_disp != (IDispatch*)&Global, "script_disp == Global\n");

    test_counter = 0;

    hres = IActiveScriptParse_ParseScriptText(parser, script_str, ((void*)0), ((void*)0), delim, 0, 0, 0, ((void*)0), ((void*)0));

    IActiveScript_Close(engine);

    IDispatch_Release(script_disp);
    IActiveScript_Release(engine);

    ref = IActiveScriptParse_Release(parser);
    ok(!ref, "ref=%d\n", ref);
    return hres;
}
