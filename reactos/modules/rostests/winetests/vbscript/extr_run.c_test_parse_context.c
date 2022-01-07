
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int CHECK_CALLED (int ) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ IActiveScriptParse_ParseScriptText (int *,int ,char const*,int *,int *,int ,int ,int ,int *,int *) ;
 int IActiveScriptParse_Release (int *) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 int IID_IActiveScriptParse ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char*) ;
 int close_script (int *) ;
 int * create_and_init_script (int ) ;
 int global_ref ;
 int global_success_d ;
 int global_success_i ;
 int ok (int,char*,int) ;
 char const* testW ;

__attribute__((used)) static void test_parse_context(void)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR str;
    HRESULT hres;

    static const WCHAR xW[] = {'x',0};
    static const WCHAR yW[] = {'y',0};

    global_ref = 1;
    engine = create_and_init_script(0);
    if(!engine)
        return;

    hres = IActiveScript_QueryInterface(engine, &IID_IActiveScriptParse, (void**)&parser);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);


    str = a2bstr("Call reportSuccess()\n");
    hres = IActiveScriptParse_ParseScriptText(parser, str, yW, ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    ok(hres == E_INVALIDARG, "ParseScriptText failed: %08x\n", hres);
    SysFreeString(str);

    str = a2bstr("class Cl\n"
                 "    Public Sub ClMethod\n"
                 "        Call reportSuccess()\n"
                 "    End Sub\n"
                 "End Class\n"
                 "Dim x\n"
                 "set x = new Cl\n");
    hres = IActiveScriptParse_ParseScriptText(parser, str, ((void*)0), ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    ok(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    SysFreeString(str);


    str = a2bstr("Call reportSuccess()\n");
    hres = IActiveScriptParse_ParseScriptText(parser, str, xW, ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    ok(hres == E_INVALIDARG, "ParseScriptText failed: %08x\n", hres);
    SysFreeString(str);

    SET_EXPECT(global_success_d);
    SET_EXPECT(global_success_i);
    str = a2bstr("Call reportSuccess()\n");
    hres = IActiveScriptParse_ParseScriptText(parser, str, testW, ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    ok(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    SysFreeString(str);
    CHECK_CALLED(global_success_d);
    CHECK_CALLED(global_success_i);

    IActiveScriptParse_Release(parser);
    close_script(engine);
    ok(global_ref == 1, "global_ref = %u\n", global_ref);
}
