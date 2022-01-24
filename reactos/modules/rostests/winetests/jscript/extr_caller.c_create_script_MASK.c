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
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_JScript ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScript ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_GLOBALMEMBERS ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  testW ; 

__attribute__((used)) static IActiveScriptParse *FUNC9(void)
{
    IActiveScriptParse *parser;
    IActiveScript *script;
    HRESULT hres;

    hres = FUNC0(&CLSID_JScript, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScript, (void**)&script);
    if(FUNC1(hres))
        return NULL;

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

    return parser;
}