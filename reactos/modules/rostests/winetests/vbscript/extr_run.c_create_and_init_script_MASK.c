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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int SCRIPTITEM_ISSOURCE ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  testW ; 

__attribute__((used)) static IActiveScript *FUNC8(DWORD flags)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    HRESULT hres;

    engine = FUNC6();
    if(!engine)
        return NULL;

    hres = FUNC3(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC7(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = FUNC0(parser);
    FUNC7(hres == S_OK, "InitNew failed: %08x\n", hres);

    FUNC1(parser);

    hres = FUNC4(engine, &ActiveScriptSite);
    FUNC7(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = FUNC2(engine, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|flags);
    FUNC7(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = FUNC5(engine, SCRIPTSTATE_STARTED);
    FUNC7(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    return engine;
}