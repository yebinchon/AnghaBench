#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 int /*<<< orphan*/  AllowIServiceProvider ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_JScript ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ CreateInstance_hres ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScript ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 scalar_t__ ProcessUrlAction_hres ; 
 void* ProcessUrlAction_policy ; 
 scalar_t__ QI_IDispatch_hres ; 
 scalar_t__ QS_SecMgr_hres ; 
 scalar_t__ QueryCustomPolicy_hres ; 
 void* QueryCustomPolicy_policy ; 
 int QueryCustomPolicy_psize ; 
 int SCRIPTITEM_GLOBALMEMBERS ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 scalar_t__ S_OK ; 
 scalar_t__ SetSite_hres ; 
 int /*<<< orphan*/  TRUE ; 
 void* URLPOLICY_ALLOW ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  testW ; 

__attribute__((used)) static IActiveScriptParse *FUNC11(BOOL skip_tests, BOOL use_sec_mgr)
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
    SetSite_hres = S_OK;
    AllowIServiceProvider = TRUE;

    hres = FUNC0(&CLSID_JScript, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScript, (void**)&script);
    if(!skip_tests)
        FUNC8(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);
    if(FUNC1(hres))
        return NULL;

    if(!skip_tests)
        FUNC10((IUnknown*)script, use_sec_mgr);

    hres = FUNC4(script, &IID_IActiveScriptParse, (void**)&parser);
    FUNC8(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = FUNC2(parser);
    FUNC8(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC6(script, &ActiveScriptSite);
    FUNC8(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = FUNC3(script, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    FUNC8(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = FUNC7(script, SCRIPTSTATE_STARTED);
    FUNC8(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    FUNC5(script);

    if(!skip_tests) {
        FUNC9(parser,
                "function testException(func, type, number) {\n"
                "    try {\n"
                "        func();\n"
                "    }catch(e) {\n"
                "        ok(e.name === type, 'e.name = ' + e.name + ', expected ' + type)\n"
                "        ok(e.number === number, 'e.number = ' + e.number + ', expected ' + number);\n"
                "        return;\n"
                "    }\n"
                "    ok(false, 'exception expected');\n"
                "}");
    }

    return parser;
}