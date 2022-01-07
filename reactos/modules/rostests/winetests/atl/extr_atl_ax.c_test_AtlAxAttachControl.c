
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int * HWND ;
typedef int * HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_WebBrowser ;
 int CW_USEDEFAULT ;
 int * CoCreateInstance (int *,int *,int,int *,void**) ;
 int * CreateWindowA (char*,char*,int ,int ,int ,int ,int ,int *,int *,int *,int *) ;
 int DestroyWindow (int *) ;
 int * E_INVALIDARG ;
 scalar_t__ FAILED (int *) ;
 int IID_IOleObject ;
 int IUnknown_Release (int *) ;
 int * S_FALSE ;
 int * S_OK ;
 int ok (int,char*,int *) ;
 int * pAtlAxAttachControl (int *,int *,int **) ;
 int skip (char*) ;

__attribute__((used)) static void test_AtlAxAttachControl(void)
{
    HWND hwnd = CreateWindowA("WineAtlTestClass", "Wine ATL Test Window", 0,
                              CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
                              CW_USEDEFAULT, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    HRESULT hr;
    IUnknown *pObj, *pContainer;

    hr = pAtlAxAttachControl(((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);

    pContainer = (IUnknown *)0xdeadbeef;
    hr = pAtlAxAttachControl(((void*)0), ((void*)0), &pContainer);
    ok(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    ok(pContainer == (IUnknown *)0xdeadbeef,
       "Expected the output container pointer to be untouched, got %p\n", pContainer);

    hr = pAtlAxAttachControl(((void*)0), hwnd, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);

    hr = CoCreateInstance(&CLSID_WebBrowser, ((void*)0), CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER,
                          &IID_IOleObject, (void **)&pObj);
    ok(hr == S_OK, "Expected CoCreateInstance to return S_OK, got 0x%08x\n", hr);

    if (FAILED(hr))
    {
        skip("Couldn't obtain a test IOleObject instance\n");
        return;
    }

    hr = pAtlAxAttachControl(pObj, ((void*)0), ((void*)0));
    ok(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);

    pContainer = ((void*)0);
    hr = pAtlAxAttachControl(pObj, ((void*)0), &pContainer);
    ok(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);
    ok(pContainer != ((void*)0), "got %p\n", pContainer);
    IUnknown_Release(pContainer);

    hr = pAtlAxAttachControl(pObj, hwnd, ((void*)0));
    ok(hr == S_OK, "Expected AtlAxAttachControl to return S_OK, got 0x%08x\n", hr);

    IUnknown_Release(pObj);

    DestroyWindow(hwnd);
}
