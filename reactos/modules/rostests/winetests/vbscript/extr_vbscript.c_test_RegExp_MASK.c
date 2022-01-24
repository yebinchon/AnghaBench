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
typedef  int ULONG ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ISubMatches ;
typedef  int /*<<< orphan*/  IRegExp2 ;
typedef  int /*<<< orphan*/  IMatchCollection2 ;
typedef  int /*<<< orphan*/  IMatch2 ;
typedef  int /*<<< orphan*/  IEnumVARIANT ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_VBScriptRegExp ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int E_INVALIDARG ; 
 int E_NOINTERFACE ; 
 int E_POINTER ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_IEnumVARIANT ; 
 int /*<<< orphan*/  IID_IMatch ; 
 int /*<<< orphan*/  IID_IMatch2 ; 
 int /*<<< orphan*/  IID_IMatchCollection ; 
 int /*<<< orphan*/  IID_IMatchCollection2 ; 
 int /*<<< orphan*/  IID_IRegExp ; 
 int /*<<< orphan*/  IID_IRegExp2 ; 
 int /*<<< orphan*/  IID_ISubMatches ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int REGDB_E_CLASSNOTREG ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 

__attribute__((used)) static void FUNC31(void)
{
    IRegExp2 *regexp;
    IMatchCollection2 *mc;
    IMatch2 *match;
    ISubMatches *sm;
    IEnumVARIANT *ev;
    IUnknown *unk;
    IDispatch *disp;
    HRESULT hres;
    BSTR bstr;
    LONG count;
    VARIANT v;
    ULONG fetched;

    hres = FUNC0(&CLSID_VBScriptRegExp, NULL,
            CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUnknown, (void**)&unk);
    if(hres == REGDB_E_CLASSNOTREG) {
        FUNC30("VBScriptRegExp is not registered\n");
        return;
    }
    FUNC29(hres == S_OK, "CoCreateInstance(CLSID_VBScriptRegExp) failed: %x\n", hres);

    hres = FUNC26(unk, &IID_IRegExp2, (void**)&regexp);
    if(hres == E_NOINTERFACE) {
        FUNC30("IRegExp2 interface is not available\n");
        return;
    }
    FUNC29(hres == S_OK, "QueryInterface(IID_IRegExp2) failed: %x\n", hres);
    FUNC27(unk);

    hres = FUNC18(regexp, &IID_IRegExp, (void**)&unk);
    FUNC29(hres == S_OK, "QueryInterface(IID_IRegExp) returned %x\n", hres);
    FUNC27(unk);

    hres = FUNC18(regexp, &IID_IDispatchEx, (void**)&unk);
    FUNC29(hres == E_NOINTERFACE, "QueryInterface(IID_IDispatchEx) returned %x\n", hres);

    hres = FUNC22(regexp, &bstr);
    FUNC29(bstr == NULL, "bstr != NULL\n");
    FUNC29(hres == S_OK, "get_Pattern returned %x, expected S_OK\n", hres);

    hres = FUNC22(regexp, NULL);
    FUNC29(hres == E_POINTER, "get_Pattern returned %x, expected E_POINTER\n", hres);

    hres = FUNC21(regexp, NULL);
    FUNC29(hres == E_POINTER, "get_IgnoreCase returned %x, expected E_POINTER\n", hres);

    hres = FUNC20(regexp, NULL);
    FUNC29(hres == E_POINTER, "get_Global returned %x, expected E_POINTER\n", hres);

    hres = FUNC17(regexp, NULL, &disp);
    FUNC29(hres == S_OK, "Execute returned %x, expected S_OK\n", hres);
    hres = FUNC1(disp, &IID_IMatchCollection2, (void**)&mc);
    FUNC29(hres == S_OK, "QueryInterface(IID_IMatchCollection2) returned %x\n", hres);
    FUNC2(disp);

    hres = FUNC12(mc, &IID_IMatchCollection, (void**)&unk);
    FUNC29(hres == S_OK, "QueryInterface(IID_IMatchCollection) returned %x\n", hres);
    FUNC27(unk);

    hres = FUNC14(mc, NULL);
    FUNC29(hres == E_POINTER, "get_Count returned %x, expected E_POINTER\n", hres);

    hres = FUNC14(mc, &count);
    FUNC29(hres == S_OK, "get_Count returned %x, expected S_OK\n", hres);
    FUNC29(count == 1, "count = %d\n", count);

    hres = FUNC15(mc, 1, &disp);
    FUNC29(hres == E_INVALIDARG, "get_Item returned %x, expected E_INVALIDARG\n", hres);

    hres = FUNC15(mc, 1, NULL);
    FUNC29(hres == E_POINTER, "get_Item returned %x, expected E_POINTER\n", hres);

    hres = FUNC15(mc, 0, &disp);
    FUNC29(hres == S_OK, "get_Item returned %x, expected S_OK\n", hres);
    hres = FUNC1(disp, &IID_IMatch2, (void**)&match);
    FUNC29(hres == S_OK, "QueryInterface(IID_IMatch2) returned %x\n", hres);
    FUNC2(disp);

    hres = FUNC6(match, &IID_IMatch, (void**)&unk);
    FUNC29(hres == S_OK, "QueryInterface(IID_IMatch) returned %x\n", hres);
    FUNC27(unk);

    hres = FUNC11(match, NULL);
    FUNC29(hres == E_POINTER, "get_Value returned %x, expected E_POINTER\n", hres);

    hres = FUNC8(match, NULL);
    FUNC29(hres == E_POINTER, "get_FirstIndex returned %x, expected E_POINTER\n", hres);

    hres = FUNC9(match, NULL);
    FUNC29(hres == E_POINTER, "get_Length returned %x, expected E_POINTER\n", hres);

    hres = FUNC10(match, NULL);
    FUNC29(hres == E_POINTER, "get_SubMatches returned %x, expected E_POINTER\n", hres);

    hres = FUNC10(match, &disp);
    FUNC29(hres == S_OK, "get_SubMatches returned %x, expected S_OK\n", hres);
    FUNC7(match);
    hres = FUNC1(disp, &IID_ISubMatches, (void**)&sm);
    FUNC29(hres == S_OK, "QueryInterface(IID_ISubMatches) returned %x\n", hres);
    FUNC2(disp);

    hres = FUNC25(sm, 0, &v);
    FUNC29(hres == E_INVALIDARG, "get_Item returned %x, expected E_INVALIDARG\n", hres);

    hres = FUNC25(sm, 0, NULL);
    FUNC29(hres == E_POINTER, "get_Item returned %x, expected E_POINTER\n", hres);

    hres = FUNC24(sm, NULL);
    FUNC29(hres == E_POINTER, "get_Count returned %x, expected E_POINTER\n", hres);
    FUNC23(sm);

    hres = FUNC16(mc, &unk);
    FUNC29(hres == S_OK, "get__NewEnum returned %x, expected S_OK\n", hres);
    hres = FUNC26(unk, &IID_IEnumVARIANT, (void**)&ev);
    FUNC29(hres == S_OK, "QueryInterface(IID_IEnumVARIANT) returned %x\n", hres);
    FUNC27(unk);
    FUNC13(mc);

    hres = FUNC5(ev, 2);
    FUNC29(hres == S_OK, "Skip returned %x\n", hres);

    hres = FUNC3(ev, 1, &v, &fetched);
    FUNC29(hres == S_FALSE, "Next returned %x, expected S_FALSE\n", hres);
    FUNC29(fetched == 0, "fetched = %d\n", fetched);

    hres = FUNC5(ev, -1);
    FUNC29(hres == S_OK, "Skip returned %x\n", hres);

    hres = FUNC3(ev, 1, &v, &fetched);
    FUNC29(hres == S_OK, "Next returned %x\n", hres);
    FUNC29(fetched == 1, "fetched = %d\n", fetched);
    FUNC28(&v);
    FUNC4(ev);

    FUNC19(regexp);
}