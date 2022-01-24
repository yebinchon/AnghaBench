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
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int global_ref ; 
 int /*<<< orphan*/  global_success_d ; 
 int /*<<< orphan*/  global_success_i ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 char const* testW ; 

__attribute__((used)) static void FUNC10(void)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    BSTR str;
    HRESULT hres;

    static const WCHAR xW[] = {'x',0};
    static const WCHAR yW[] = {'y',0};

    global_ref = 1;
    engine = FUNC8(0);
    if(!engine)
        return;

    hres = FUNC3(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC9(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    /* unknown identifier context is not a valid argument */
    str = FUNC6("Call reportSuccess()\n");
    hres = FUNC1(parser, str, yW, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC9(hres == E_INVALIDARG, "ParseScriptText failed: %08x\n", hres);
    FUNC5(str);

    str = FUNC6("class Cl\n"
                 "    Public Sub ClMethod\n"
                 "        Call reportSuccess()\n"
                 "    End Sub\n"
                 "End Class\n"
                 "Dim x\n"
                 "set x = new Cl\n");
    hres = FUNC1(parser, str, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC9(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    FUNC5(str);

    /* known global variable is not a valid context */
    str = FUNC6("Call reportSuccess()\n");
    hres = FUNC1(parser, str, xW, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC9(hres == E_INVALIDARG, "ParseScriptText failed: %08x\n", hres);
    FUNC5(str);

    FUNC4(global_success_d);
    FUNC4(global_success_i);
    str = FUNC6("Call reportSuccess()\n");
    hres = FUNC1(parser, str, testW, NULL, NULL, 0, 0, 0, NULL, NULL);
    FUNC9(hres == S_OK, "ParseScriptText failed: %08x\n", hres);
    FUNC5(str);
    FUNC0(global_success_d);
    FUNC0(global_success_i);

    FUNC2(parser);
    FUNC7(engine);
    FUNC9(global_ref == 1, "global_ref = %u\n", global_ref);
}