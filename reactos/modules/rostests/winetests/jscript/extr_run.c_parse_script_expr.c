
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int ActiveScriptSite ;
 int CHECK_CALLED (int ) ;
 scalar_t__ E_FAIL ;
 int GetItemInfo_testVal ;
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
 int SCRIPTTEXT_ISEXPRESSION ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int * create_script () ;
 int ok (int,char*,scalar_t__) ;
 int test_valW ;

__attribute__((used)) static HRESULT parse_script_expr(const char *expr, VARIANT *res, IActiveScript **engine_ret)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR str;
    HRESULT hres;

    engine = create_script();
    if(!engine)
        return E_FAIL;

    hres = IActiveScript_QueryInterface(engine, &IID_IActiveScriptParse, (void**)&parser);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = IActiveScriptParse_InitNew(parser);
    ok(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = IActiveScript_SetScriptSite(engine, &ActiveScriptSite);
    ok(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    SET_EXPECT(GetItemInfo_testVal);
    hres = IActiveScript_AddNamedItem(engine, test_valW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    ok(hres == S_OK, "AddNamedItem failed: %08x\n", hres);
    CHECK_CALLED(GetItemInfo_testVal);

    hres = IActiveScript_SetScriptState(engine, SCRIPTSTATE_STARTED);
    ok(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    str = a2bstr(expr);
    hres = IActiveScriptParse_ParseScriptText(parser, str, ((void*)0), ((void*)0), ((void*)0), 0, 0, SCRIPTTEXT_ISEXPRESSION, res, ((void*)0));
    SysFreeString(str);

    IActiveScriptParse_Release(parser);

    if(engine_ret) {
        *engine_ret = engine;
    }else {
        IActiveScript_Close(engine);
        IActiveScript_Release(engine);
    }
    return hres;
}
