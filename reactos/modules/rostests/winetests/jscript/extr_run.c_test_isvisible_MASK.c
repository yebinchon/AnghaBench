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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  GetItemInfo_testVal ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_GLOBALMEMBERS ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_valW ; 

__attribute__((used)) static void FUNC13(BOOL global_members)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    HRESULT hres;

    static const WCHAR script_textW[] =
        {'v','a','r',' ','v',' ','=',' ','t','e','s','t','V','a','l',';',0};

    engine = FUNC11();
    if(!engine)
        return;

    hres = FUNC6(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC12(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);
    if (FUNC1(hres))
    {
        FUNC7(engine);
        return;
    }

    hres = FUNC2(parser);
    FUNC12(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC8(engine, &ActiveScriptSite);
    FUNC12(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    if(global_members)
        FUNC10(GetItemInfo_testVal);
    hres = FUNC5(engine, test_valW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|
            (global_members ? SCRIPTITEM_GLOBALMEMBERS : 0));
    FUNC12(hres == S_OK, "AddNamedItem failed: %08x\n", hres);
    if(global_members)
        FUNC0(GetItemInfo_testVal);

    hres = FUNC9(engine, SCRIPTSTATE_STARTED);
    FUNC12(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    if(!global_members)
        FUNC10(GetItemInfo_testVal);
    hres = FUNC3(parser, script_textW, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC12(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    if(!global_members)
        FUNC0(GetItemInfo_testVal);

    hres = FUNC3(parser, script_textW, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC12(hres == S_OK, "ParseScriptText failed: %08x\n", hres);

    FUNC7(engine);
    FUNC4(parser);
}