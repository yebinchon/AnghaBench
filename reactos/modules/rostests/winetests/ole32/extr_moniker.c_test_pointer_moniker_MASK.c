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
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IROTData ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,...) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IROTData ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ MKSYS_POINTERMONIKER ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Test_ClassFactory ; 
 scalar_t__ cLocks ; 
 int /*<<< orphan*/  FUNC19 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,...) ; 

__attribute__((used)) static void FUNC23(void)
{
    HRESULT hr;
    IMoniker *moniker;
    DWORD moniker_type;
    DWORD hash;
    IBindCtx *bindctx;
    FILETIME filetime;
    IMoniker *inverse;
    IUnknown *unknown;
    IStream *stream;
    IROTData *rotdata;
    LPOLESTR display_name;

    cLocks = 0;

    hr = FUNC1((IUnknown *)&Test_ClassFactory, NULL);
    FUNC19(hr == E_INVALIDARG, "CreatePointerMoniker(x, NULL) should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    hr = FUNC1((IUnknown *)&Test_ClassFactory, &moniker);
    FUNC22(hr, CreatePointerMoniker);
    if (!moniker) return;

    FUNC20();

    /* Display Name */

    hr = FUNC0(0, &bindctx);
    FUNC22(hr, CreateBindCtx);

    hr = FUNC6(moniker, bindctx, NULL, &display_name);
    FUNC19(hr == E_NOTIMPL, "IMoniker_GetDisplayName should have returned E_NOTIMPL instead of 0x%08x\n", hr);

    FUNC3(bindctx);

    hr = FUNC10(moniker);
    FUNC19(hr == S_FALSE, "IMoniker_IsDirty should return S_FALSE, not 0x%08x\n", hr);

    /* IROTData::GetComparisonData test */

    hr = FUNC13(moniker, &IID_IROTData, (void **)&rotdata);
    FUNC19(hr == E_NOINTERFACE, "IMoniker_QueryInterface(IID_IROTData) should have returned E_NOINTERFACE instead of 0x%08x\n", hr);

    /* Saving */

    hr = FUNC2(NULL, TRUE, &stream);
    FUNC22(hr, CreateStreamOnHGlobal);

    hr = FUNC15(moniker, stream, TRUE);
    FUNC19(hr == E_NOTIMPL, "IMoniker_Save should have returned E_NOTIMPL instead of 0x%08x\n", hr);

    FUNC16(stream);

    /* Hashing */
    hr = FUNC8(moniker, &hash);
    FUNC22(hr, IMoniker_Hash);
    FUNC19(hash == FUNC18(&Test_ClassFactory),
        "Hash value should have been 0x%08x, instead of 0x%08x\n",
        FUNC18(&Test_ClassFactory), hash);

    /* IsSystemMoniker test */
    hr = FUNC12(moniker, &moniker_type);
    FUNC22(hr, IMoniker_IsSystemMoniker);
    FUNC19(moniker_type == MKSYS_POINTERMONIKER,
        "dwMkSys != MKSYS_POINTERMONIKER, instead was 0x%08x\n",
        moniker_type);

    hr = FUNC9(moniker, &inverse);
    FUNC22(hr, IMoniker_Inverse);
    FUNC14(inverse);

    hr = FUNC0(0, &bindctx);
    FUNC22(hr, CreateBindCtx);

    /* IsRunning test */
    hr = FUNC11(moniker, bindctx, NULL, NULL);
    FUNC19(hr == S_OK, "IMoniker_IsRunning should return S_OK, not 0x%08x\n", hr);

    hr = FUNC7(moniker, bindctx, NULL, &filetime);
    FUNC19(hr == E_NOTIMPL, "IMoniker_GetTimeOfLastChange should return E_NOTIMPL, not 0x%08x\n", hr);

    hr = FUNC4(moniker, bindctx, NULL, &IID_IUnknown, (void **)&unknown);
    FUNC22(hr, IMoniker_BindToObject);
    FUNC17(unknown);

    hr = FUNC5(moniker, bindctx, NULL, &IID_IUnknown, (void **)&unknown);
    FUNC22(hr, IMoniker_BindToStorage);
    FUNC17(unknown);

    FUNC14(moniker);

    FUNC21();

    hr = FUNC1(NULL, &moniker);
    FUNC22(hr, CreatePointerMoniker);

    hr = FUNC4(moniker, bindctx, NULL, &IID_IUnknown, (void **)&unknown);
    FUNC19(hr == E_UNEXPECTED, "IMoniker_BindToObject should have returned E_UNEXPECTED instead of 0x%08x\n", hr);

    hr = FUNC5(moniker, bindctx, NULL, &IID_IUnknown, (void **)&unknown);
    FUNC19(hr == E_UNEXPECTED, "IMoniker_BindToStorage should have returned E_UNEXPECTED instead of 0x%08x\n", hr);

    FUNC3(bindctx);

    FUNC14(moniker);
}