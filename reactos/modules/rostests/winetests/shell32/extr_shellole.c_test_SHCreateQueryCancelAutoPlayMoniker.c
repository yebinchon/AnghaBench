
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clsid ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CLSID ;


 int CHECK_CALLED (int ) ;
 int CLSID_ClassMoniker ;
 int CreateBindCtx (int ,int **) ;
 int E_INVALIDARG ;
 int E_NOTIMPL ;
 int IBindCtx_Release (int *) ;
 int IID_IQueryCancelAutoPlay ;
 int IMoniker_BindToObject (int *,int *,int *,int *,void**) ;
 int IMoniker_GetClassID (int *,int *) ;
 int IMoniker_IsSystemMoniker (int *,int*) ;
 int IMoniker_Release (int *) ;
 int IsEqualGUID (int *,int *) ;
 int MKSYS_CLASSMONIKER ;
 int SET_EXPECT (int ) ;
 int S_OK ;
 int autoplay_BindToObject ;
 int autoplay_GetClassObject ;
 int memset (int *,int ,int) ;
 int ok (int,char*,int) ;
 int pSHCreateQueryCancelAutoPlayMoniker (int **) ;
 int test_moniker ;
 int win_skip (char*) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_SHCreateQueryCancelAutoPlayMoniker(void)
{
    IBindCtx *ctxt;
    IMoniker *mon;
    IUnknown *unk;
    CLSID clsid;
    HRESULT hr;
    DWORD sys;

    if (!pSHCreateQueryCancelAutoPlayMoniker)
    {
        win_skip("SHCreateQueryCancelAutoPlayMoniker is not available, skipping tests.\n");
        return;
    }

    hr = pSHCreateQueryCancelAutoPlayMoniker(((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = pSHCreateQueryCancelAutoPlayMoniker(&mon);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    sys = -1;
    hr = IMoniker_IsSystemMoniker(mon, &sys);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(sys == MKSYS_CLASSMONIKER, "got %d\n", sys);

    memset(&clsid, 0, sizeof(clsid));
    hr = IMoniker_GetClassID(mon, &clsid);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(IsEqualGUID(&clsid, &CLSID_ClassMoniker), "got %s\n", wine_dbgstr_guid(&clsid));


    SET_EXPECT(autoplay_BindToObject);
    SET_EXPECT(autoplay_GetClassObject);

    CreateBindCtx(0, &ctxt);
    hr = IMoniker_BindToObject(mon, ctxt, &test_moniker, &IID_IQueryCancelAutoPlay, (void**)&unk);
    ok(hr == E_NOTIMPL, "got 0x%08x\n", hr);
    IBindCtx_Release(ctxt);

    CHECK_CALLED(autoplay_BindToObject);
    CHECK_CALLED(autoplay_GetClassObject);

    IMoniker_Release(mon);
}
