
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int propvar ;
typedef int pkey ;
struct TYPE_16__ {int lVal; } ;
struct TYPE_17__ {int pid; void* vt; TYPE_1__ u; void* fmtid; } ;
typedef int PSC_STATE ;
typedef TYPE_2__ PROPVARIANT ;
typedef TYPE_2__ PROPERTYKEY ;
typedef int IPropertyStoreCache ;
typedef int HRESULT ;
typedef int DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_InMemoryPropertyStore ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int E_INVALIDARG ;
 int E_POINTER ;
 scalar_t__ FAILED (int) ;
 int IID_IPropertyStoreCache ;
 int IPropertyStoreCache_Commit (int *) ;
 int IPropertyStoreCache_GetAt (int *,int ,TYPE_2__*) ;
 int IPropertyStoreCache_GetCount (int *,int*) ;
 int IPropertyStoreCache_GetState (int *,TYPE_2__*,int*) ;
 int IPropertyStoreCache_GetValue (int *,TYPE_2__*,TYPE_2__*) ;
 int IPropertyStoreCache_GetValueAndState (int *,TYPE_2__*,TYPE_2__*,int*) ;
 int IPropertyStoreCache_Release (int *) ;
 int IPropertyStoreCache_SetState (int *,TYPE_2__*,int) ;
 int IPropertyStoreCache_SetValue (int *,TYPE_2__*,TYPE_2__*) ;
 int IPropertyStoreCache_SetValueAndState (int *,TYPE_2__*,TYPE_2__*,int) ;
 int IsEqualGUID (void**,void**) ;
 void* PKEY_WineTest ;
 int PSC_DIRTY ;
 int PSC_NORMAL ;
 int S_OK ;
 int TYPE_E_ELEMENTNOTFOUND ;
 int VT_EMPTY ;
 void* VT_I2 ;
 void* VT_I4 ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_inmemorystore(void)
{
    IPropertyStoreCache *propcache;
    HRESULT hr;
    PROPERTYKEY pkey;
    PROPVARIANT propvar;
    DWORD count;
    PSC_STATE state;

    hr = CoCreateInstance(&CLSID_InMemoryPropertyStore, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IPropertyStoreCache, (void**)&propcache);
    ok(hr == S_OK, "CoCreateInstance failed, hr=%x\n", hr);

    if (FAILED(hr))
    {
        skip("CLSID_InMemoryPropertyStore not supported\n");
        return;
    }

    hr = IPropertyStoreCache_GetCount(propcache, ((void*)0));
    ok(hr == E_POINTER, "GetCount failed, hr=%x\n", hr);

    hr = IPropertyStoreCache_GetCount(propcache, &count);
    ok(hr == S_OK, "GetCount failed, hr=%x\n", hr);
    ok(count == 0, "GetCount returned %i, expected 0\n", count);

    hr = IPropertyStoreCache_Commit(propcache);
    ok(hr == S_OK, "Commit failed, hr=%x\n", hr);

    hr = IPropertyStoreCache_Commit(propcache);
    ok(hr == S_OK, "Commit failed, hr=%x\n", hr);

    hr = IPropertyStoreCache_GetAt(propcache, 0, &pkey);
    ok(hr == E_INVALIDARG, "GetAt failed, hr=%x\n", hr);

    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 4;

    memset(&propvar, 0, sizeof(propvar));
    propvar.vt = VT_I4;
    propvar.u.lVal = 12345;

    if (0)
    {

        hr = IPropertyStoreCache_SetValue(propcache, ((void*)0), &propvar);
        ok(hr == E_POINTER, "SetValue failed, hr=%x\n", hr);

        hr = IPropertyStoreCache_SetValue(propcache, &pkey, ((void*)0));
        ok(hr == E_POINTER, "SetValue failed, hr=%x\n", hr);
    }

    hr = IPropertyStoreCache_SetValue(propcache, &pkey, &propvar);
    ok(hr == S_OK, "SetValue failed, hr=%x\n", hr);

    hr = IPropertyStoreCache_GetCount(propcache, &count);
    ok(hr == S_OK, "GetCount failed, hr=%x\n", hr);
    ok(count == 1, "GetCount returned %i, expected 0\n", count);

    memset(&pkey, 0, sizeof(pkey));

    hr = IPropertyStoreCache_GetAt(propcache, 0, &pkey);
    ok(hr == S_OK, "GetAt failed, hr=%x\n", hr);
    ok(IsEqualGUID(&pkey.fmtid, &PKEY_WineTest), "got wrong pkey\n");
    ok(pkey.pid == 4, "got pid of %i, expected 4\n", pkey.pid);

    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 4;

    memset(&propvar, 0, sizeof(propvar));

    if (0)
    {

        hr = IPropertyStoreCache_GetValue(propcache, ((void*)0), &propvar);
        ok(hr == E_POINTER, "GetValue failed, hr=%x\n", hr);
    }

    hr = IPropertyStoreCache_GetValue(propcache, &pkey, ((void*)0));
    ok(hr == E_POINTER, "GetValue failed, hr=%x\n", hr);

    hr = IPropertyStoreCache_GetValue(propcache, &pkey, &propvar);
    ok(hr == S_OK, "GetValue failed, hr=%x\n", hr);
    ok(propvar.vt == VT_I4, "expected VT_I4, got %d\n", propvar.vt);
    ok(propvar.u.lVal == 12345, "expected 12345, got %d\n", propvar.u.lVal);

    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 10;


    propvar.vt = VT_I2;
    hr = IPropertyStoreCache_GetValue(propcache, &pkey, &propvar);
    ok(hr == S_OK, "GetValue failed, hr=%x\n", hr);
    ok(propvar.vt == VT_EMPTY, "expected VT_EMPTY, got %d\n", propvar.vt);

    state = 0xdeadbeef;
    hr = IPropertyStoreCache_GetState(propcache, &pkey, &state);
    ok(hr == TYPE_E_ELEMENTNOTFOUND, "GetState failed, hr=%x\n", hr);
    ok(state == PSC_NORMAL, "expected PSC_NORMAL, got %d\n", state);

    propvar.vt = VT_I2;
    state = 0xdeadbeef;
    hr = IPropertyStoreCache_GetValueAndState(propcache, &pkey, &propvar, &state);
    ok(hr == TYPE_E_ELEMENTNOTFOUND, "GetValueAndState failed, hr=%x\n", hr);
    ok(propvar.vt == VT_EMPTY, "expected VT_EMPTY, got %d\n", propvar.vt);
    ok(state == PSC_NORMAL, "expected PSC_NORMAL, got %d\n", state);


    hr = IPropertyStoreCache_SetState(propcache, &pkey, PSC_NORMAL);
    ok(hr == TYPE_E_ELEMENTNOTFOUND, "SetState failed, hr=%x\n", hr);


    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 4;

    state = 0xdeadbeef;
    hr = IPropertyStoreCache_GetState(propcache, &pkey, &state);
    ok(hr == S_OK, "GetState failed, hr=%x\n", hr);
    ok(state == PSC_NORMAL, "expected PSC_NORMAL, got %d\n", state);

    hr = IPropertyStoreCache_SetState(propcache, &pkey, 10);
    ok(hr == S_OK, "SetState failed, hr=%x\n", hr);

    state = 0xdeadbeef;
    hr = IPropertyStoreCache_GetState(propcache, &pkey, &state);
    ok(hr == S_OK, "GetState failed, hr=%x\n", hr);
    ok(state == 10, "expected 10, got %d\n", state);

    propvar.vt = VT_I4;
    propvar.u.lVal = 12346;
    hr = IPropertyStoreCache_SetValueAndState(propcache, &pkey, &propvar, 5);
    ok(hr == S_OK, "SetValueAndState failed, hr=%x\n", hr);

    memset(&propvar, 0, sizeof(propvar));
    state = 0xdeadbeef;
    hr = IPropertyStoreCache_GetValueAndState(propcache, &pkey, &propvar, &state);
    ok(hr == S_OK, "GetValueAndState failed, hr=%x\n", hr);
    ok(propvar.vt == VT_I4, "expected VT_I4, got %d\n", propvar.vt);
    ok(propvar.u.lVal == 12346, "expected 12346, got %d\n", propvar.vt);
    ok(state == 5, "expected 5, got %d\n", state);


    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 8;

    propvar.vt = VT_I4;
    propvar.u.lVal = 12347;
    hr = IPropertyStoreCache_SetValueAndState(propcache, &pkey, &propvar, PSC_DIRTY);
    ok(hr == S_OK, "SetValueAndState failed, hr=%x\n", hr);

    memset(&propvar, 0, sizeof(propvar));
    state = 0xdeadbeef;
    hr = IPropertyStoreCache_GetValueAndState(propcache, &pkey, &propvar, &state);
    ok(hr == S_OK, "GetValueAndState failed, hr=%x\n", hr);
    ok(propvar.vt == VT_I4, "expected VT_I4, got %d\n", propvar.vt);
    ok(propvar.u.lVal == 12347, "expected 12347, got %d\n", propvar.vt);
    ok(state == PSC_DIRTY, "expected PSC_DIRTY, got %d\n", state);

    IPropertyStoreCache_Release(propcache);
}
