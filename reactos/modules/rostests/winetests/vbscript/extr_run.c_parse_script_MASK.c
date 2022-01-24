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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  Global ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 scalar_t__ test_counter ; 

__attribute__((used)) static HRESULT FUNC10(DWORD flags, BSTR script_str, const WCHAR *delim)
{
    IActiveScriptParse *parser;
    IActiveScript *engine;
    IDispatch *script_disp;
    LONG ref;
    HRESULT hres;

    engine = FUNC8(flags);
    if(!engine)
        return S_OK;

    hres = FUNC5(engine, &IID_IActiveScriptParse, (void**)&parser);
    FUNC9(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);
    if (FUNC0(hres))
    {
        FUNC6(engine);
        return hres;
    }

    hres = FUNC4(engine, NULL, &script_disp);
    FUNC9(hres == S_OK, "GetScriptDispatch failed: %08x\n", hres);
    FUNC9(script_disp != NULL, "script_disp == NULL\n");
    FUNC9(script_disp != (IDispatch*)&Global, "script_disp == Global\n");

    test_counter = 0;

    hres = FUNC1(parser, script_str, NULL, NULL, delim, 0, 0, 0, NULL, NULL);

    FUNC3(engine);

    FUNC7(script_disp);
    FUNC6(engine);

    ref = FUNC2(parser);
    FUNC9(!ref, "ref=%d\n", ref);
    return hres;
}