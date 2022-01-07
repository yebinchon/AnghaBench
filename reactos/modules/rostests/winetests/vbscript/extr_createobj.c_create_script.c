
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int ActiveScriptSite ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_VBScript ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ CreateInstance_hres ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IActiveScriptParse_InitNew (int *) ;
 scalar_t__ IActiveScript_AddNamedItem (int *,int ,int) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 int IActiveScript_Release (int *) ;
 scalar_t__ IActiveScript_SetScriptSite (int *,int *) ;
 scalar_t__ IActiveScript_SetScriptState (int *,int ) ;
 int IID_IActiveScript ;
 int IID_IActiveScriptParse ;
 scalar_t__ ProcessUrlAction_hres ;
 void* ProcessUrlAction_policy ;
 scalar_t__ QI_IDispatch_hres ;
 scalar_t__ QI_IObjectWithSite_hres ;
 scalar_t__ QS_SecMgr_hres ;
 scalar_t__ QueryCustomPolicy_hres ;
 void* QueryCustomPolicy_policy ;
 int QueryCustomPolicy_psize ;
 int SCRIPTITEM_GLOBALMEMBERS ;
 int SCRIPTITEM_ISSOURCE ;
 int SCRIPTITEM_ISVISIBLE ;
 int SCRIPTSTATE_STARTED ;
 scalar_t__ S_OK ;
 scalar_t__ SetSite_hres ;
 void* URLPOLICY_ALLOW ;
 int ok (int,char*,scalar_t__) ;
 int set_safety_options (int *,int ) ;
 int testW ;

__attribute__((used)) static IActiveScriptParse *create_script(BOOL use_sec_mgr)
{
    IActiveScriptParse *parser;
    IActiveScript *script;
    HRESULT hres;

    QS_SecMgr_hres = S_OK;
    ProcessUrlAction_hres = S_OK;
    ProcessUrlAction_policy = URLPOLICY_ALLOW;
    CreateInstance_hres = S_OK;
    QueryCustomPolicy_hres = S_OK;
    QueryCustomPolicy_psize = sizeof(DWORD);
    QueryCustomPolicy_policy = URLPOLICY_ALLOW;
    QI_IDispatch_hres = S_OK;
    QI_IObjectWithSite_hres = S_OK;
    SetSite_hres = S_OK;

    hres = CoCreateInstance(&CLSID_VBScript, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScript, (void**)&script);
    ok(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);
    if(FAILED(hres))
        return ((void*)0);

    set_safety_options((IUnknown*)script, use_sec_mgr);

    hres = IActiveScript_QueryInterface(script, &IID_IActiveScriptParse, (void**)&parser);
    ok(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = IActiveScriptParse_InitNew(parser);
    ok(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = IActiveScript_SetScriptSite(script, &ActiveScriptSite);
    ok(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = IActiveScript_AddNamedItem(script, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    ok(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = IActiveScript_SetScriptState(script, SCRIPTSTATE_STARTED);
    ok(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    IActiveScript_Release(script);

    return parser;
}
