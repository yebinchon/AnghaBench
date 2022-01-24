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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  testW ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC15(const char *script_name)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    ULONG start, end;
    BSTR src;
    HRESULT hres;

    engine = FUNC11();
    if(!engine)
        return;

    hres = FUNC6(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC13(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);
    if (FUNC0(hres)) {
        FUNC7(engine);
        return;
    }

    hres = FUNC2(parser);
    FUNC13(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC8(engine, &ActiveScriptSite);
    FUNC13(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = FUNC5(engine, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE);
    FUNC13(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = FUNC9(engine, SCRIPTSTATE_STARTED);
    FUNC13(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    src = FUNC12(script_name);

    start = FUNC1();
    hres = FUNC3(parser, src, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
    end = FUNC1();
    FUNC13(hres == S_OK, "%s: ParseScriptText failed: %08x\n", script_name, hres);

    FUNC14("%s ran in %u ms\n", script_name, end-start);

    FUNC7(engine);
    FUNC4(parser);
    FUNC10(src);
}