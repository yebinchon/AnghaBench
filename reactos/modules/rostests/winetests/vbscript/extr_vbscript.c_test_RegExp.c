
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int ULONG ;
typedef int LONG ;
typedef int IUnknown ;
typedef int ISubMatches ;
typedef int IRegExp2 ;
typedef int IMatchCollection2 ;
typedef int IMatch2 ;
typedef int IEnumVARIANT ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int * BSTR ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_VBScriptRegExp ;
 int CoCreateInstance (int *,int *,int,int *,void**) ;
 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int E_POINTER ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 int IEnumVARIANT_Next (int *,int,int *,int*) ;
 int IEnumVARIANT_Release (int *) ;
 int IEnumVARIANT_Skip (int *,int) ;
 int IID_IDispatchEx ;
 int IID_IEnumVARIANT ;
 int IID_IMatch ;
 int IID_IMatch2 ;
 int IID_IMatchCollection ;
 int IID_IMatchCollection2 ;
 int IID_IRegExp ;
 int IID_IRegExp2 ;
 int IID_ISubMatches ;
 int IID_IUnknown ;
 int IMatch2_QueryInterface (int *,int *,void**) ;
 int IMatch2_Release (int *) ;
 int IMatch2_get_FirstIndex (int *,int *) ;
 int IMatch2_get_Length (int *,int *) ;
 int IMatch2_get_SubMatches (int *,int **) ;
 int IMatch2_get_Value (int *,int *) ;
 int IMatchCollection2_QueryInterface (int *,int *,void**) ;
 int IMatchCollection2_Release (int *) ;
 int IMatchCollection2_get_Count (int *,int*) ;
 int IMatchCollection2_get_Item (int *,int,int **) ;
 int IMatchCollection2_get__NewEnum (int *,int **) ;
 int IRegExp2_Execute (int *,int *,int **) ;
 int IRegExp2_QueryInterface (int *,int *,void**) ;
 int IRegExp2_Release (int *) ;
 int IRegExp2_get_Global (int *,int *) ;
 int IRegExp2_get_IgnoreCase (int *,int *) ;
 int IRegExp2_get_Pattern (int *,int **) ;
 int ISubMatches_Release (int *) ;
 int ISubMatches_get_Count (int *,int *) ;
 int ISubMatches_get_Item (int *,int ,int *) ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int REGDB_E_CLASSNOTREG ;
 int S_FALSE ;
 int S_OK ;
 int VariantClear (int *) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RegExp(void)
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

    hres = CoCreateInstance(&CLSID_VBScriptRegExp, ((void*)0),
            CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUnknown, (void**)&unk);
    if(hres == REGDB_E_CLASSNOTREG) {
        win_skip("VBScriptRegExp is not registered\n");
        return;
    }
    ok(hres == S_OK, "CoCreateInstance(CLSID_VBScriptRegExp) failed: %x\n", hres);

    hres = IUnknown_QueryInterface(unk, &IID_IRegExp2, (void**)&regexp);
    if(hres == E_NOINTERFACE) {
        win_skip("IRegExp2 interface is not available\n");
        return;
    }
    ok(hres == S_OK, "QueryInterface(IID_IRegExp2) failed: %x\n", hres);
    IUnknown_Release(unk);

    hres = IRegExp2_QueryInterface(regexp, &IID_IRegExp, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IRegExp) returned %x\n", hres);
    IUnknown_Release(unk);

    hres = IRegExp2_QueryInterface(regexp, &IID_IDispatchEx, (void**)&unk);
    ok(hres == E_NOINTERFACE, "QueryInterface(IID_IDispatchEx) returned %x\n", hres);

    hres = IRegExp2_get_Pattern(regexp, &bstr);
    ok(bstr == ((void*)0), "bstr != NULL\n");
    ok(hres == S_OK, "get_Pattern returned %x, expected S_OK\n", hres);

    hres = IRegExp2_get_Pattern(regexp, ((void*)0));
    ok(hres == E_POINTER, "get_Pattern returned %x, expected E_POINTER\n", hres);

    hres = IRegExp2_get_IgnoreCase(regexp, ((void*)0));
    ok(hres == E_POINTER, "get_IgnoreCase returned %x, expected E_POINTER\n", hres);

    hres = IRegExp2_get_Global(regexp, ((void*)0));
    ok(hres == E_POINTER, "get_Global returned %x, expected E_POINTER\n", hres);

    hres = IRegExp2_Execute(regexp, ((void*)0), &disp);
    ok(hres == S_OK, "Execute returned %x, expected S_OK\n", hres);
    hres = IDispatch_QueryInterface(disp, &IID_IMatchCollection2, (void**)&mc);
    ok(hres == S_OK, "QueryInterface(IID_IMatchCollection2) returned %x\n", hres);
    IDispatch_Release(disp);

    hres = IMatchCollection2_QueryInterface(mc, &IID_IMatchCollection, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IMatchCollection) returned %x\n", hres);
    IUnknown_Release(unk);

    hres = IMatchCollection2_get_Count(mc, ((void*)0));
    ok(hres == E_POINTER, "get_Count returned %x, expected E_POINTER\n", hres);

    hres = IMatchCollection2_get_Count(mc, &count);
    ok(hres == S_OK, "get_Count returned %x, expected S_OK\n", hres);
    ok(count == 1, "count = %d\n", count);

    hres = IMatchCollection2_get_Item(mc, 1, &disp);
    ok(hres == E_INVALIDARG, "get_Item returned %x, expected E_INVALIDARG\n", hres);

    hres = IMatchCollection2_get_Item(mc, 1, ((void*)0));
    ok(hres == E_POINTER, "get_Item returned %x, expected E_POINTER\n", hres);

    hres = IMatchCollection2_get_Item(mc, 0, &disp);
    ok(hres == S_OK, "get_Item returned %x, expected S_OK\n", hres);
    hres = IDispatch_QueryInterface(disp, &IID_IMatch2, (void**)&match);
    ok(hres == S_OK, "QueryInterface(IID_IMatch2) returned %x\n", hres);
    IDispatch_Release(disp);

    hres = IMatch2_QueryInterface(match, &IID_IMatch, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IMatch) returned %x\n", hres);
    IUnknown_Release(unk);

    hres = IMatch2_get_Value(match, ((void*)0));
    ok(hres == E_POINTER, "get_Value returned %x, expected E_POINTER\n", hres);

    hres = IMatch2_get_FirstIndex(match, ((void*)0));
    ok(hres == E_POINTER, "get_FirstIndex returned %x, expected E_POINTER\n", hres);

    hres = IMatch2_get_Length(match, ((void*)0));
    ok(hres == E_POINTER, "get_Length returned %x, expected E_POINTER\n", hres);

    hres = IMatch2_get_SubMatches(match, ((void*)0));
    ok(hres == E_POINTER, "get_SubMatches returned %x, expected E_POINTER\n", hres);

    hres = IMatch2_get_SubMatches(match, &disp);
    ok(hres == S_OK, "get_SubMatches returned %x, expected S_OK\n", hres);
    IMatch2_Release(match);
    hres = IDispatch_QueryInterface(disp, &IID_ISubMatches, (void**)&sm);
    ok(hres == S_OK, "QueryInterface(IID_ISubMatches) returned %x\n", hres);
    IDispatch_Release(disp);

    hres = ISubMatches_get_Item(sm, 0, &v);
    ok(hres == E_INVALIDARG, "get_Item returned %x, expected E_INVALIDARG\n", hres);

    hres = ISubMatches_get_Item(sm, 0, ((void*)0));
    ok(hres == E_POINTER, "get_Item returned %x, expected E_POINTER\n", hres);

    hres = ISubMatches_get_Count(sm, ((void*)0));
    ok(hres == E_POINTER, "get_Count returned %x, expected E_POINTER\n", hres);
    ISubMatches_Release(sm);

    hres = IMatchCollection2_get__NewEnum(mc, &unk);
    ok(hres == S_OK, "get__NewEnum returned %x, expected S_OK\n", hres);
    hres = IUnknown_QueryInterface(unk, &IID_IEnumVARIANT, (void**)&ev);
    ok(hres == S_OK, "QueryInterface(IID_IEnumVARIANT) returned %x\n", hres);
    IUnknown_Release(unk);
    IMatchCollection2_Release(mc);

    hres = IEnumVARIANT_Skip(ev, 2);
    ok(hres == S_OK, "Skip returned %x\n", hres);

    hres = IEnumVARIANT_Next(ev, 1, &v, &fetched);
    ok(hres == S_FALSE, "Next returned %x, expected S_FALSE\n", hres);
    ok(fetched == 0, "fetched = %d\n", fetched);

    hres = IEnumVARIANT_Skip(ev, -1);
    ok(hres == S_OK, "Skip returned %x\n", hres);

    hres = IEnumVARIANT_Next(ev, 1, &v, &fetched);
    ok(hres == S_OK, "Next returned %x\n", hres);
    ok(fetched == 1, "fetched = %d\n", fetched);
    VariantClear(&v);
    IEnumVARIANT_Release(ev);

    IRegExp2_Release(regexp);
}
