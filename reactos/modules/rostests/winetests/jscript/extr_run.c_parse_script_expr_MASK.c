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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  GetItemInfo_testVal ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_GLOBALMEMBERS ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 int /*<<< orphan*/  SCRIPTTEXT_ISEXPRESSION ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_valW ; 

__attribute__((used)) static HRESULT FUNC15(const char *expr, VARIANT *res, IActiveScript **engine_ret)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR str;
    HRESULT hres;

    engine = FUNC13();
    if(!engine)
        return E_FAIL;

    hres = FUNC6(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC14(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = FUNC1(parser);
    FUNC14(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC8(engine, &ActiveScriptSite);
    FUNC14(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    FUNC10(GetItemInfo_testVal);
    hres = FUNC4(engine, test_valW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    FUNC14(hres == S_OK, "AddNamedItem failed: %08x\n", hres);
    FUNC0(GetItemInfo_testVal);

    hres = FUNC9(engine, SCRIPTSTATE_STARTED);
    FUNC14(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    str = FUNC12(expr);
    hres = FUNC2(parser, str, NULL, NULL, NULL, 0, 0, SCRIPTTEXT_ISEXPRESSION, res, NULL);
    FUNC11(str);

    FUNC3(parser);

    if(engine_ret) {
        *engine_ret = engine;
    }else {
        FUNC5(engine);
        FUNC7(engine);
    }
    return hres;
}