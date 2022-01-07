
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPOLESTR ;
typedef int IUnknown ;
typedef int IStream ;
typedef int IROTData ;
typedef int IMoniker ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;
typedef int FILETIME ;
typedef scalar_t__ DWORD ;


 scalar_t__ CreateBindCtx (int *,int **) ;
 scalar_t__ CreatePointerMoniker (int *,int **) ;
 scalar_t__ CreateStreamOnHGlobal (int *,int **,...) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ E_UNEXPECTED ;
 int IBindCtx_Release (int *) ;
 int IID_IROTData ;
 int IID_IUnknown ;
 scalar_t__ IMoniker_BindToObject (int *,int *,int *,int *,void**) ;
 scalar_t__ IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 scalar_t__ IMoniker_GetDisplayName (int *,int *,int *,int *) ;
 scalar_t__ IMoniker_GetTimeOfLastChange (int *,int *,int *,int *) ;
 scalar_t__ IMoniker_Hash (int *,scalar_t__*) ;
 scalar_t__ IMoniker_Inverse (int *,int **) ;
 scalar_t__ IMoniker_IsDirty (int *) ;
 scalar_t__ IMoniker_IsRunning (int *,int *,int *,int *) ;
 scalar_t__ IMoniker_IsSystemMoniker (int *,scalar_t__*) ;
 scalar_t__ IMoniker_QueryInterface (int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 scalar_t__ IMoniker_Save (int *,int *,int ) ;
 int IStream_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ MKSYS_POINTERMONIKER ;
 scalar_t__ PtrToUlong (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int TRUE ;
 int Test_ClassFactory ;
 scalar_t__ cLocks ;
 int ok (int,char*,scalar_t__,...) ;
 int ok_more_than_one_lock () ;
 int ok_no_locks () ;
 int ok_ole_success (scalar_t__,...) ;

__attribute__((used)) static void test_pointer_moniker(void)
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

    hr = CreatePointerMoniker((IUnknown *)&Test_ClassFactory, ((void*)0));
    ok(hr == E_INVALIDARG, "CreatePointerMoniker(x, NULL) should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    hr = CreatePointerMoniker((IUnknown *)&Test_ClassFactory, &moniker);
    ok_ole_success(hr, CreatePointerMoniker);
    if (!moniker) return;

    ok_more_than_one_lock();



    hr = CreateBindCtx(0, &bindctx);
    ok_ole_success(hr, CreateBindCtx);

    hr = IMoniker_GetDisplayName(moniker, bindctx, ((void*)0), &display_name);
    ok(hr == E_NOTIMPL, "IMoniker_GetDisplayName should have returned E_NOTIMPL instead of 0x%08x\n", hr);

    IBindCtx_Release(bindctx);

    hr = IMoniker_IsDirty(moniker);
    ok(hr == S_FALSE, "IMoniker_IsDirty should return S_FALSE, not 0x%08x\n", hr);



    hr = IMoniker_QueryInterface(moniker, &IID_IROTData, (void **)&rotdata);
    ok(hr == E_NOINTERFACE, "IMoniker_QueryInterface(IID_IROTData) should have returned E_NOINTERFACE instead of 0x%08x\n", hr);



    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok_ole_success(hr, CreateStreamOnHGlobal);

    hr = IMoniker_Save(moniker, stream, TRUE);
    ok(hr == E_NOTIMPL, "IMoniker_Save should have returned E_NOTIMPL instead of 0x%08x\n", hr);

    IStream_Release(stream);


    hr = IMoniker_Hash(moniker, &hash);
    ok_ole_success(hr, IMoniker_Hash);
    ok(hash == PtrToUlong(&Test_ClassFactory),
        "Hash value should have been 0x%08x, instead of 0x%08x\n",
        PtrToUlong(&Test_ClassFactory), hash);


    hr = IMoniker_IsSystemMoniker(moniker, &moniker_type);
    ok_ole_success(hr, IMoniker_IsSystemMoniker);
    ok(moniker_type == MKSYS_POINTERMONIKER,
        "dwMkSys != MKSYS_POINTERMONIKER, instead was 0x%08x\n",
        moniker_type);

    hr = IMoniker_Inverse(moniker, &inverse);
    ok_ole_success(hr, IMoniker_Inverse);
    IMoniker_Release(inverse);

    hr = CreateBindCtx(0, &bindctx);
    ok_ole_success(hr, CreateBindCtx);


    hr = IMoniker_IsRunning(moniker, bindctx, ((void*)0), ((void*)0));
    ok(hr == S_OK, "IMoniker_IsRunning should return S_OK, not 0x%08x\n", hr);

    hr = IMoniker_GetTimeOfLastChange(moniker, bindctx, ((void*)0), &filetime);
    ok(hr == E_NOTIMPL, "IMoniker_GetTimeOfLastChange should return E_NOTIMPL, not 0x%08x\n", hr);

    hr = IMoniker_BindToObject(moniker, bindctx, ((void*)0), &IID_IUnknown, (void **)&unknown);
    ok_ole_success(hr, IMoniker_BindToObject);
    IUnknown_Release(unknown);

    hr = IMoniker_BindToStorage(moniker, bindctx, ((void*)0), &IID_IUnknown, (void **)&unknown);
    ok_ole_success(hr, IMoniker_BindToStorage);
    IUnknown_Release(unknown);

    IMoniker_Release(moniker);

    ok_no_locks();

    hr = CreatePointerMoniker(((void*)0), &moniker);
    ok_ole_success(hr, CreatePointerMoniker);

    hr = IMoniker_BindToObject(moniker, bindctx, ((void*)0), &IID_IUnknown, (void **)&unknown);
    ok(hr == E_UNEXPECTED, "IMoniker_BindToObject should have returned E_UNEXPECTED instead of 0x%08x\n", hr);

    hr = IMoniker_BindToStorage(moniker, bindctx, ((void*)0), &IID_IUnknown, (void **)&unknown);
    ok(hr == E_UNEXPECTED, "IMoniker_BindToStorage should have returned E_UNEXPECTED instead of 0x%08x\n", hr);

    IBindCtx_Release(bindctx);

    IMoniker_Release(moniker);
}
