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
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  Global ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/ * script_disp ; 
 int /*<<< orphan*/  testW ; 

__attribute__((used)) static HRESULT FUNC13(DWORD flags, BSTR script_str)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    HRESULT hres;

    engine = FUNC11();
    if(!engine)
        return S_OK;

    hres = FUNC6(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC12(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);
    if (FUNC0(hres))
    {
        FUNC7(engine);
        return hres;
    }

    hres = FUNC1(parser);
    FUNC12(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC8(engine, &ActiveScriptSite);
    FUNC12(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = FUNC4(engine, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|flags);
    FUNC12(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = FUNC9(engine, SCRIPTSTATE_STARTED);
    FUNC12(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    hres = FUNC5(engine, NULL, &script_disp);
    FUNC12(hres == S_OK, "GetScriptDispatch failed: %08x\n", hres);
    FUNC12(script_disp != NULL, "script_disp == NULL\n");
    FUNC12(script_disp != (IDispatch*)&Global, "script_disp == Global\n");

    hres = FUNC2(parser, script_str, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);

    FUNC10(script_disp);
    FUNC7(engine);
    FUNC3(parser);

    return hres;
}