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
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 int /*<<< orphan*/  BindHandler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_GLOBALMEMBERS ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  global_success_d ; 
 int /*<<< orphan*/  global_success_i ; 
 int /*<<< orphan*/  FUNC13 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * script_engine ; 
 int /*<<< orphan*/  testW ; 

__attribute__((used)) static void FUNC14(void)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR str;
    HRESULT hres;

    script_engine = engine = FUNC12();
    if(!engine)
        return;

    hres = FUNC5(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC13(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = FUNC1(parser);
    FUNC13(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC7(engine, &ActiveScriptSite);
    FUNC13(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = FUNC4(engine, testW, SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    FUNC13(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    str = FUNC11("function bindEventHandler::eventName() {}\n"
                 "reportSuccess();");
    hres = FUNC2(parser, str, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC13(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    FUNC10(str);

    FUNC9(BindHandler);
    FUNC9(global_success_d);
    FUNC9(global_success_i);
    hres = FUNC8(engine, SCRIPTSTATE_STARTED);
    FUNC13(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);
    FUNC0(BindHandler);
    FUNC0(global_success_d);
    FUNC0(global_success_i);

    FUNC6(engine);
    FUNC3(parser);
    script_engine = NULL;
}