
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IUnknown ;
typedef int IDispatchEx ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;


 int ActiveScriptSite ;
 int CHECK_CALLED (int ) ;
 scalar_t__ E_POINTER ;
 scalar_t__ E_UNEXPECTED ;
 int GetLCID ;
 scalar_t__ IActiveScriptParse_InitNew (int *) ;
 int IActiveScriptParse_Release (int *) ;
 scalar_t__ IActiveScript_Close (int *) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 scalar_t__ IActiveScript_Release (int *) ;
 scalar_t__ IActiveScript_SetScriptSite (int *,int *) ;
 scalar_t__ IActiveScript_SetScriptState (int *,int ) ;
 int IDispatchEx_Release (int *) ;
 int IID_IActiveScriptParse ;
 int OnStateChange_CLOSED ;
 int OnStateChange_INITIALIZED ;
 int OnStateChange_STARTED ;
 int SCRIPTSTATE_CLOSED ;
 int SCRIPTSTATE_INITIALIZED ;
 int SCRIPTSTATE_STARTED ;
 int SCRIPTSTATE_UNINITIALIZED ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int * create_jscript () ;
 int * get_script_dispatch (int *) ;
 int ok (int,char*,scalar_t__) ;
 int test_invoke_versioning (int *) ;
 int test_no_script_dispatch (int *) ;
 int test_safety (int *) ;
 int test_script_dispatch (int *) ;
 int test_state (int *,int ) ;

__attribute__((used)) static void test_jscript(void)
{
    IActiveScriptParse *parse;
    IActiveScript *script;
    IDispatchEx *dispex;
    ULONG ref;
    HRESULT hres;

    script = create_jscript();

    hres = IActiveScript_QueryInterface(script, &IID_IActiveScriptParse, (void**)&parse);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    test_state(script, SCRIPTSTATE_UNINITIALIZED);
    test_safety((IUnknown*)script);
    test_invoke_versioning(script);

    hres = IActiveScriptParse_InitNew(parse);
    ok(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = IActiveScriptParse_InitNew(parse);
    ok(hres == E_UNEXPECTED, "InitNew failed: %08x, expected E_UNEXPECTED\n", hres);

    hres = IActiveScript_SetScriptSite(script, ((void*)0));
    ok(hres == E_POINTER, "SetScriptSite failed: %08x, expected E_POINTER\n", hres);

    test_state(script, SCRIPTSTATE_UNINITIALIZED);
    test_no_script_dispatch(script);

    SET_EXPECT(GetLCID);
    SET_EXPECT(OnStateChange_INITIALIZED);
    hres = IActiveScript_SetScriptSite(script, &ActiveScriptSite);
    ok(hres == S_OK, "SetScriptSite failed: %08x\n", hres);
    CHECK_CALLED(GetLCID);
    CHECK_CALLED(OnStateChange_INITIALIZED);

    test_state(script, SCRIPTSTATE_INITIALIZED);

    hres = IActiveScript_SetScriptSite(script, &ActiveScriptSite);
    ok(hres == E_UNEXPECTED, "SetScriptSite failed: %08x, expected E_UNEXPECTED\n", hres);

    dispex = get_script_dispatch(script);
    test_script_dispatch(dispex);

    SET_EXPECT(OnStateChange_STARTED);
    hres = IActiveScript_SetScriptState(script, SCRIPTSTATE_STARTED);
    ok(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);
    CHECK_CALLED(OnStateChange_STARTED);

    test_state(script, SCRIPTSTATE_STARTED);

    SET_EXPECT(OnStateChange_CLOSED);
    hres = IActiveScript_Close(script);
    ok(hres == S_OK, "Close failed: %08x\n", hres);
    CHECK_CALLED(OnStateChange_CLOSED);

    test_state(script, SCRIPTSTATE_CLOSED);
    test_no_script_dispatch(script);
    test_script_dispatch(dispex);
    IDispatchEx_Release(dispex);

    IActiveScriptParse_Release(parse);

    ref = IActiveScript_Release(script);
    ok(!ref, "ref = %d\n", ref);
}
