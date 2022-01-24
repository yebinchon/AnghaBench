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
typedef  int /*<<< orphan*/  clsid ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLSID_ClassMoniker ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int E_INVALIDARG ; 
 int E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IQueryCancelAutoPlay ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MKSYS_CLASSMONIKER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int S_OK ; 
 int /*<<< orphan*/  autoplay_BindToObject ; 
 int /*<<< orphan*/  autoplay_GetClassObject ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  test_moniker ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(void)
{
    IBindCtx *ctxt;
    IMoniker *mon;
    IUnknown *unk;
    CLSID clsid;
    HRESULT hr;
    DWORD sys;

    if (!&pSHCreateQueryCancelAutoPlayMoniker)
    {
        FUNC12("SHCreateQueryCancelAutoPlayMoniker is not available, skipping tests.\n");
        return;
    }

    hr = FUNC11(NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC11(&mon);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    sys = -1;
    hr = FUNC5(mon, &sys);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC10(sys == MKSYS_CLASSMONIKER, "got %d\n", sys);

    FUNC9(&clsid, 0, sizeof(clsid));
    hr = FUNC4(mon, &clsid);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC10(FUNC7(&clsid, &CLSID_ClassMoniker), "got %s\n", FUNC13(&clsid));

    /* extract used CLSID that implements this hook */
    FUNC8(autoplay_BindToObject);
    FUNC8(autoplay_GetClassObject);

    FUNC1(0, &ctxt);
    hr = FUNC3(mon, ctxt, &test_moniker, &IID_IQueryCancelAutoPlay, (void**)&unk);
    FUNC10(hr == E_NOTIMPL, "got 0x%08x\n", hr);
    FUNC2(ctxt);

    FUNC0(autoplay_BindToObject);
    FUNC0(autoplay_GetClassObject);

    FUNC6(mon);
}