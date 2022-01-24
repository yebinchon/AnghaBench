#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  propvar ;
typedef  int /*<<< orphan*/  pkey ;
struct TYPE_16__ {int lVal; } ;
struct TYPE_17__ {int pid; void* vt; TYPE_1__ u; void* fmtid; } ;
typedef  int PSC_STATE ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  TYPE_2__ PROPERTYKEY ;
typedef  int /*<<< orphan*/  IPropertyStoreCache ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_InMemoryPropertyStore ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int E_INVALIDARG ; 
 int E_POINTER ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  IID_IPropertyStoreCache ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (void**,void**) ; 
 void* PKEY_WineTest ; 
 int PSC_DIRTY ; 
 int PSC_NORMAL ; 
 int S_OK ; 
 int TYPE_E_ELEMENTNOTFOUND ; 
 int VT_EMPTY ; 
 void* VT_I2 ; 
 void* VT_I4 ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void FUNC16(void)
{
    IPropertyStoreCache *propcache;
    HRESULT hr;
    PROPERTYKEY pkey;
    PROPVARIANT propvar;
    DWORD count;
    PSC_STATE state;

    hr = FUNC0(&CLSID_InMemoryPropertyStore, NULL, CLSCTX_INPROC_SERVER,
        &IID_IPropertyStoreCache, (void**)&propcache);
    FUNC14(hr == S_OK, "CoCreateInstance failed, hr=%x\n", hr);

    if (FUNC1(hr))
    {
        FUNC15("CLSID_InMemoryPropertyStore not supported\n");
        return;
    }

    hr = FUNC4(propcache, NULL);
    FUNC14(hr == E_POINTER, "GetCount failed, hr=%x\n", hr);

    hr = FUNC4(propcache, &count);
    FUNC14(hr == S_OK, "GetCount failed, hr=%x\n", hr);
    FUNC14(count == 0, "GetCount returned %i, expected 0\n", count);

    hr = FUNC2(propcache);
    FUNC14(hr == S_OK, "Commit failed, hr=%x\n", hr);

    hr = FUNC2(propcache);
    FUNC14(hr == S_OK, "Commit failed, hr=%x\n", hr);

    hr = FUNC3(propcache, 0, &pkey);
    FUNC14(hr == E_INVALIDARG, "GetAt failed, hr=%x\n", hr);

    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 4;

    FUNC13(&propvar, 0, sizeof(propvar));
    propvar.vt = VT_I4;
    propvar.u.lVal = 12345;

    if (0)
    {
        /* Crashes on Windows 7 */
        hr = FUNC10(propcache, NULL, &propvar);
        FUNC14(hr == E_POINTER, "SetValue failed, hr=%x\n", hr);

        hr = FUNC10(propcache, &pkey, NULL);
        FUNC14(hr == E_POINTER, "SetValue failed, hr=%x\n", hr);
    }

    hr = FUNC10(propcache, &pkey, &propvar);
    FUNC14(hr == S_OK, "SetValue failed, hr=%x\n", hr);

    hr = FUNC4(propcache, &count);
    FUNC14(hr == S_OK, "GetCount failed, hr=%x\n", hr);
    FUNC14(count == 1, "GetCount returned %i, expected 0\n", count);

    FUNC13(&pkey, 0, sizeof(pkey));

    hr = FUNC3(propcache, 0, &pkey);
    FUNC14(hr == S_OK, "GetAt failed, hr=%x\n", hr);
    FUNC14(FUNC12(&pkey.fmtid, &PKEY_WineTest), "got wrong pkey\n");
    FUNC14(pkey.pid == 4, "got pid of %i, expected 4\n", pkey.pid);

    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 4;

    FUNC13(&propvar, 0, sizeof(propvar));

    if (0)
    {
        /* Crashes on Windows 7 */
        hr = FUNC6(propcache, NULL, &propvar);
        FUNC14(hr == E_POINTER, "GetValue failed, hr=%x\n", hr);
    }

    hr = FUNC6(propcache, &pkey, NULL);
    FUNC14(hr == E_POINTER, "GetValue failed, hr=%x\n", hr);

    hr = FUNC6(propcache, &pkey, &propvar);
    FUNC14(hr == S_OK, "GetValue failed, hr=%x\n", hr);
    FUNC14(propvar.vt == VT_I4, "expected VT_I4, got %d\n", propvar.vt);
    FUNC14(propvar.u.lVal == 12345, "expected 12345, got %d\n", propvar.u.lVal);

    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 10;

    /* Get information for field that isn't set yet */
    propvar.vt = VT_I2;
    hr = FUNC6(propcache, &pkey, &propvar);
    FUNC14(hr == S_OK, "GetValue failed, hr=%x\n", hr);
    FUNC14(propvar.vt == VT_EMPTY, "expected VT_EMPTY, got %d\n", propvar.vt);

    state = 0xdeadbeef;
    hr = FUNC5(propcache, &pkey, &state);
    FUNC14(hr == TYPE_E_ELEMENTNOTFOUND, "GetState failed, hr=%x\n", hr);
    FUNC14(state == PSC_NORMAL, "expected PSC_NORMAL, got %d\n", state);

    propvar.vt = VT_I2;
    state = 0xdeadbeef;
    hr = FUNC7(propcache, &pkey, &propvar, &state);
    FUNC14(hr == TYPE_E_ELEMENTNOTFOUND, "GetValueAndState failed, hr=%x\n", hr);
    FUNC14(propvar.vt == VT_EMPTY, "expected VT_EMPTY, got %d\n", propvar.vt);
    FUNC14(state == PSC_NORMAL, "expected PSC_NORMAL, got %d\n", state);

    /* Set state on an unset field */
    hr = FUNC9(propcache, &pkey, PSC_NORMAL);
    FUNC14(hr == TYPE_E_ELEMENTNOTFOUND, "SetState failed, hr=%x\n", hr);

    /* Manipulate state on already set field */
    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 4;

    state = 0xdeadbeef;
    hr = FUNC5(propcache, &pkey, &state);
    FUNC14(hr == S_OK, "GetState failed, hr=%x\n", hr);
    FUNC14(state == PSC_NORMAL, "expected PSC_NORMAL, got %d\n", state);

    hr = FUNC9(propcache, &pkey, 10);
    FUNC14(hr == S_OK, "SetState failed, hr=%x\n", hr);

    state = 0xdeadbeef;
    hr = FUNC5(propcache, &pkey, &state);
    FUNC14(hr == S_OK, "GetState failed, hr=%x\n", hr);
    FUNC14(state == 10, "expected 10, got %d\n", state);

    propvar.vt = VT_I4;
    propvar.u.lVal = 12346;
    hr = FUNC11(propcache, &pkey, &propvar, 5);
    FUNC14(hr == S_OK, "SetValueAndState failed, hr=%x\n", hr);

    FUNC13(&propvar, 0, sizeof(propvar));
    state = 0xdeadbeef;
    hr = FUNC7(propcache, &pkey, &propvar, &state);
    FUNC14(hr == S_OK, "GetValueAndState failed, hr=%x\n", hr);
    FUNC14(propvar.vt == VT_I4, "expected VT_I4, got %d\n", propvar.vt);
    FUNC14(propvar.u.lVal == 12346, "expected 12346, got %d\n", propvar.vt);
    FUNC14(state == 5, "expected 5, got %d\n", state);

    /* Set new field with state */
    pkey.fmtid = PKEY_WineTest;
    pkey.pid = 8;

    propvar.vt = VT_I4;
    propvar.u.lVal = 12347;
    hr = FUNC11(propcache, &pkey, &propvar, PSC_DIRTY);
    FUNC14(hr == S_OK, "SetValueAndState failed, hr=%x\n", hr);

    FUNC13(&propvar, 0, sizeof(propvar));
    state = 0xdeadbeef;
    hr = FUNC7(propcache, &pkey, &propvar, &state);
    FUNC14(hr == S_OK, "GetValueAndState failed, hr=%x\n", hr);
    FUNC14(propvar.vt == VT_I4, "expected VT_I4, got %d\n", propvar.vt);
    FUNC14(propvar.u.lVal == 12347, "expected 12347, got %d\n", propvar.vt);
    FUNC14(state == PSC_DIRTY, "expected PSC_DIRTY, got %d\n", state);

    FUNC8(propcache);
}