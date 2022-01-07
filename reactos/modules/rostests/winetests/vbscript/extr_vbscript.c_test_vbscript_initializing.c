
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;


 int ActiveScriptSite ;
 int CHECK_CALLED (int ) ;
 scalar_t__ E_UNEXPECTED ;
 int GetLCID ;
 scalar_t__ IActiveScriptParse_InitNew (int *) ;
 int IActiveScriptParse_Release (int *) ;
 scalar_t__ IActiveScript_Close (int *) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 scalar_t__ IActiveScript_Release (int *) ;
 scalar_t__ IActiveScript_SetScriptSite (int *,int *) ;
 int IID_IActiveScriptParse ;
 int OnStateChange_CLOSED ;
 int OnStateChange_INITIALIZED ;
 int SCRIPTSTATE_CLOSED ;
 int SCRIPTSTATE_UNINITIALIZED ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int * create_vbscript () ;
 int ok (int,char*,scalar_t__) ;
 int test_state (int *,int ) ;

__attribute__((used)) static void test_vbscript_initializing(void)
{
    IActiveScriptParse *parse;
    IActiveScript *script;
    ULONG ref;
    HRESULT hres;

    script = create_vbscript();

    hres = IActiveScript_QueryInterface(script, &IID_IActiveScriptParse, (void**)&parse);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    test_state(script, SCRIPTSTATE_UNINITIALIZED);

    SET_EXPECT(GetLCID);
    hres = IActiveScript_SetScriptSite(script, &ActiveScriptSite);
    ok(hres == S_OK, "SetScriptSite failed: %08x\n", hres);
    CHECK_CALLED(GetLCID);

    SET_EXPECT(OnStateChange_INITIALIZED);
    hres = IActiveScriptParse_InitNew(parse);
    ok(hres == S_OK, "InitNew failed: %08x\n", hres);
    CHECK_CALLED(OnStateChange_INITIALIZED);

    hres = IActiveScript_SetScriptSite(script, &ActiveScriptSite);
    ok(hres == E_UNEXPECTED, "SetScriptSite failed: %08x, expected E_UNEXPECTED\n", hres);

    SET_EXPECT(OnStateChange_CLOSED);
    hres = IActiveScript_Close(script);
    ok(hres == S_OK, "Close failed: %08x\n", hres);
    CHECK_CALLED(OnStateChange_CLOSED);

    test_state(script, SCRIPTSTATE_CLOSED);

    IActiveScriptParse_Release(parse);

    ref = IActiveScript_Release(script);
    ok(!ref, "ref = %d\n", ref);
}
