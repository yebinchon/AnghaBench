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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_GLOBALMEMBERS ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 int /*<<< orphan*/  SCRIPTSTATE_UNINITIALIZED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 scalar_t__ refobj_ref ; 
 int /*<<< orphan*/  testW ; 

__attribute__((used)) static HRESULT FUNC14(BOOL use_close)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR script_str;
    LONG ref;
    HRESULT hres;

    engine = FUNC12();
    if(!engine)
        return S_OK;

    hres = FUNC6(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC13(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);
    if (FUNC0(hres))
    {
        FUNC7(engine);
        return hres;
    }

    hres = FUNC1(parser);
    FUNC13(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC8(engine, &ActiveScriptSite);
    FUNC13(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = FUNC4(engine, testW, SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    FUNC13(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = FUNC9(engine, SCRIPTSTATE_STARTED);
    FUNC13(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    refobj_ref = 0;

    script_str = FUNC11("Dim x\nset x = RefObj\n");
    hres = FUNC2(parser, script_str, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC10(script_str);

    FUNC13(refobj_ref, "refobj_ref = 0\n");

    if(use_close) {
        hres = FUNC5(engine);
        FUNC13(hres == S_OK, "Close failed: %08x\n", hres);
    }else {
        hres = FUNC9(engine, SCRIPTSTATE_UNINITIALIZED);
        FUNC13(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);
    }

    FUNC13(!refobj_ref, "refobj_ref = %d\n", refobj_ref);

    FUNC7(engine);

    ref = FUNC3(parser);
    FUNC13(!ref, "ref=%d\n", ref);
    return hres;
}