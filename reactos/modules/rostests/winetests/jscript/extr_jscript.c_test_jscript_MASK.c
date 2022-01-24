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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveScriptSite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  GetLCID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int /*<<< orphan*/  OnStateChange_CLOSED ; 
 int /*<<< orphan*/  OnStateChange_INITIALIZED ; 
 int /*<<< orphan*/  OnStateChange_STARTED ; 
 int /*<<< orphan*/  SCRIPTSTATE_CLOSED ; 
 int /*<<< orphan*/  SCRIPTSTATE_INITIALIZED ; 
 int /*<<< orphan*/  SCRIPTSTATE_STARTED ; 
 int /*<<< orphan*/  SCRIPTSTATE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(void)
{
    IActiveScriptParse *parse;
    IActiveScript *script;
    IDispatchEx *dispex;
    ULONG ref;
    HRESULT hres;

    script = FUNC10();

    hres = FUNC4(script, &IID_IActiveScriptParse, (void**)&parse);
    FUNC12(hres == S_OK, "Could not get IActiveScriptParse: %08x\n", hres);

    FUNC17(script, SCRIPTSTATE_UNINITIALIZED);
    FUNC15((IUnknown*)script);
    FUNC13(script);

    hres = FUNC1(parse);
    FUNC12(hres == S_OK, "InitNew failed: %08x\n", hres);

    hres = FUNC1(parse);
    FUNC12(hres == E_UNEXPECTED, "InitNew failed: %08x, expected E_UNEXPECTED\n", hres);

    hres = FUNC6(script, NULL);
    FUNC12(hres == E_POINTER, "SetScriptSite failed: %08x, expected E_POINTER\n", hres);

    FUNC17(script, SCRIPTSTATE_UNINITIALIZED);
    FUNC14(script);

    FUNC9(GetLCID);
    FUNC9(OnStateChange_INITIALIZED);
    hres = FUNC6(script, &ActiveScriptSite);
    FUNC12(hres == S_OK, "SetScriptSite failed: %08x\n", hres);
    FUNC0(GetLCID);
    FUNC0(OnStateChange_INITIALIZED);

    FUNC17(script, SCRIPTSTATE_INITIALIZED);

    hres = FUNC6(script, &ActiveScriptSite);
    FUNC12(hres == E_UNEXPECTED, "SetScriptSite failed: %08x, expected E_UNEXPECTED\n", hres);

    dispex = FUNC11(script);
    FUNC16(dispex);

    FUNC9(OnStateChange_STARTED);
    hres = FUNC7(script, SCRIPTSTATE_STARTED);
    FUNC12(hres == S_OK, "SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\n", hres);
    FUNC0(OnStateChange_STARTED);

    FUNC17(script, SCRIPTSTATE_STARTED);

    FUNC9(OnStateChange_CLOSED);
    hres = FUNC3(script);
    FUNC12(hres == S_OK, "Close failed: %08x\n", hres);
    FUNC0(OnStateChange_CLOSED);

    FUNC17(script, SCRIPTSTATE_CLOSED);
    FUNC14(script);
    FUNC16(dispex);
    FUNC8(dispex);

    FUNC2(parse);

    ref = FUNC5(script);
    FUNC12(!ref, "ref = %d\n", ref);
}