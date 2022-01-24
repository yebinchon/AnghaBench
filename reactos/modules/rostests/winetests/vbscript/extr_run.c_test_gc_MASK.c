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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
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
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  global_success_d ; 
 int /*<<< orphan*/  global_success_i ; 
 int /*<<< orphan*/  FUNC14 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  strict_dispid_check ; 
 int /*<<< orphan*/  testW ; 

__attribute__((used)) static void FUNC15(void)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR src;
    HRESULT hres;

    strict_dispid_check = FALSE;

    engine = FUNC13();
    if(!engine)
        return;

    hres = FUNC6(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC14(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    hres = FUNC1(parser);
    FUNC14(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC8(engine, &ActiveScriptSite);
    FUNC14(hres == S_OK, "SetScriptSite failed: %08x\n", hres);

    hres = FUNC4(engine, testW,
            SCRIPTITEM_ISVISIBLE|SCRIPTITEM_ISSOURCE|SCRIPTITEM_GLOBALMEMBERS);
    FUNC14(hres == S_OK, "AddNamedItem failed: %08x\n", hres);

    hres = FUNC9(engine, SCRIPTSTATE_STARTED);
    FUNC14(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);

    src = FUNC12(
            "class C\n"
            "    Public ref\n"
            "    Public Sub Class_Terminate\n"
            "        Call reportSuccess()\n"
            "    End Sub\n"
            "End Class\n"
            "Dim x\n"
            "set x = new C\n"
            "set x.ref = x\n"
            "set x = nothing\n");

    hres = FUNC2(parser, src, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC14(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    FUNC11(src);

    FUNC10(global_success_d);
    FUNC10(global_success_i);
    FUNC5(engine);
    FUNC0(global_success_d);
    FUNC0(global_success_i);

    FUNC7(engine);
    FUNC3(parser);
}