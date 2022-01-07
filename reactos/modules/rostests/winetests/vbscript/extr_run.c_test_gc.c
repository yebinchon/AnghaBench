
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int ActiveScriptSite ;
 int CHECK_CALLED (int ) ;
 int FALSE ;
 scalar_t__ IActiveScriptParse_InitNew (int *) ;
 scalar_t__ IActiveScriptParse_ParseScriptText (int *,int ,int *,int *,int *,int ,int ,int ,int *,int *) ;
 int IActiveScriptParse_Release (int *) ;
 scalar_t__ IActiveScript_AddNamedItem (int *,int ,int) ;
 int IActiveScript_Close (int *) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 int IActiveScript_Release (int *) ;
 scalar_t__ IActiveScript_SetScriptSite (int *,int *) ;
 scalar_t__ IActiveScript_SetScriptState (int *,int ) ;
 int IID_IActiveScriptParse ;
 int SCRIPTITEM_GLOBALMEMBERS ;
 int SCRIPTITEM_ISSOURCE ;
 int SCRIPTITEM_ISVISIBLE ;
 int SCRIPTSTATE_STARTED ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char*) ;
 int * create_script () ;
 int global_success_d ;
 int global_success_i ;
 int ok (int,char*,scalar_t__) ;
 int strict_dispid_check ;
 int testW ;

__attribute__((used)) static void test_gc(void)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR src;
    HRESULT hres;

    strict_dispid_check = FALSE;

    engine = create_script();
    if(!engine)
        return;

    hres = IActiveScript_QueryInterface(engine, &IID_IActiveScriptParse, (void**)&parser);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = IActiveScriptParse_InitNew(parser);
    ok(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = IActiveScript_SetScriptSite(engine, &ActiveScriptSite);
    ok(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = IActiveScript_AddNamedItem(engine, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    ok(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = IActiveScript_SetScriptState(engine, SCRIPTSTATE_STARTED);
    ok(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    src = a2bstr(
            "class C\n"
            "    Public ref\n"
            "    Public Sub Class_Terminate\n"
            "        Call reportSuccess()\n"
            "    End Sub\n"
            "End Class\n"
            "Dim x\n"
            "set x = new C\n"
            "set x.ref = x\n"
            "set x = nothing\n");

    hres = IActiveScriptParse_ParseScriptText(parser, src, ((void*)0), ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    ok(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    SysFreeString(src);

    SET_EXPECT(global_success_d);
    SET_EXPECT(global_success_i);
    IActiveScript_Close(engine);
    CHECK_CALLED(global_success_d);
    CHECK_CALLED(global_success_i);

    IActiveScript_Release(engine);
    IActiveScriptParse_Release(parser);
}
