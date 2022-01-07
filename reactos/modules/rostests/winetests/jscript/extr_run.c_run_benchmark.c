
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int ActiveScriptSite ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ GetTickCount () ;
 scalar_t__ IActiveScriptParse_InitNew (int *) ;
 scalar_t__ IActiveScriptParse_ParseScriptText (int *,int ,int *,int *,int *,int ,int ,int ,int *,int *) ;
 int IActiveScriptParse_Release (int *) ;
 scalar_t__ IActiveScript_AddNamedItem (int *,int ,int) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 int IActiveScript_Release (int *) ;
 scalar_t__ IActiveScript_SetScriptSite (int *,int *) ;
 scalar_t__ IActiveScript_SetScriptState (int *,int ) ;
 int IID_IActiveScriptParse ;
 int SCRIPTITEM_ISSOURCE ;
 int SCRIPTITEM_ISVISIBLE ;
 int SCRIPTSTATE_STARTED ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int * create_script () ;
 int load_res (char const*) ;
 int ok (int,char*,char const*,...) ;
 int testW ;
 int trace (char*,char const*,scalar_t__) ;

__attribute__((used)) static void run_benchmark(const char *script_name)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    ULONG start, end;
    BSTR src;
    HRESULT hres;

    engine = create_script();
    if(!engine)
        return;

    hres = IActiveScript_QueryInterface(engine, &IID_IActiveScriptParse, (void**)&parser);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);
    if (FAILED(hres)) {
        IActiveScript_Release(engine);
        return;
    }

    hres = IActiveScriptParse_InitNew(parser);
    ok(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = IActiveScript_SetScriptSite(engine, &ActiveScriptSite);
    ok(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = IActiveScript_AddNamedItem(engine, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE);
    ok(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = IActiveScript_SetScriptState(engine, SCRIPTSTATE_STARTED);
    ok(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    src = load_res(script_name);

    start = GetTickCount();
    hres = IActiveScriptParse_ParseScriptText(parser, src, ((void*)0), ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    end = GetTickCount();
    ok(hres == S_OK, "%s: ParseScriptText failed: %08x\n", script_name, hres);

    trace("%s ran in %u ms\n", script_name, end-start);

    IActiveScript_Release(engine);
    IActiveScriptParse_Release(parser);
    SysFreeString(src);
}
