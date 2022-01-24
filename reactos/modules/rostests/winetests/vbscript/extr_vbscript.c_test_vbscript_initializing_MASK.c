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

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  GetLCID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int /*<<< orphan*/  OnStateChange_CLOSED ; 
 int /*<<< orphan*/  OnStateChange_INITIALIZED ; 
 int /*<<< orphan*/  SCRIPTSTATE_CLOSED ; 
 int /*<<< orphan*/  SCRIPTSTATE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void)
{
    IActiveScriptParse *parse;
    IActiveScript *script;
    ULONG ref;
    HRESULT hres;

    script = FUNC8();

    hres = FUNC4(script, &IID_IActiveScriptParse, (void**)&parse);
    FUNC9(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    FUNC10(script, SCRIPTSTATE_UNINITIALIZED);

    FUNC7(GetLCID);
    hres = FUNC6(script, &ActiveScriptSite);
    FUNC9(hres == S_OK, "SetScriptSite failed: %08x\n", hres);
    FUNC0(GetLCID);

    FUNC7(OnStateChange_INITIALIZED);
    hres = FUNC1(parse);
    FUNC9(hres == S_OK, "InitNew failed: %08x\n", hres);
    FUNC0(OnStateChange_INITIALIZED);

    hres = FUNC6(script, &ActiveScriptSite);
    FUNC9(hres == E_UNEXPECTED, "SetScriptSite failed: %08x, expected E_UNEXPECTED\n", hres);

    FUNC7(OnStateChange_CLOSED);
    hres = FUNC3(script);
    FUNC9(hres == S_OK, "Close failed: %08x\n", hres);
    FUNC0(OnStateChange_CLOSED);

    FUNC10(script, SCRIPTSTATE_CLOSED);

    FUNC2(parse);

    ref = FUNC5(script);
    FUNC9(!ref, "ref = %d\n", ref);
}