
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IUnknown ;
typedef int * HWND ;
typedef int HRESULT ;


 int AtlAxAttachControl (int *,int *,int **) ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_WebBrowser ;
 int CoCreateInstance (int *,int *,int,int *,void**) ;
 int DestroyWindow (int *) ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int) ;
 int GWLP_USERDATA ;
 int GetWindowLongW (int *,int ) ;
 int IID_IOleObject ;
 int IUnknown_Release (int *) ;
 int S_FALSE ;
 int S_OK ;
 int SetWindowLongW (int *,int ,int) ;
 int * create_container_window () ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_AtlAxAttachControl(void)
{
    HWND hwnd;
    HRESULT hr;
    IUnknown *control, *container;
    LONG val;

    hr = AtlAxAttachControl(((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);

    container = (IUnknown *)0xdeadbeef;
    hr = AtlAxAttachControl(((void*)0), ((void*)0), &container);
    ok(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    ok(container == (IUnknown *)0xdeadbeef,
       "Expected the output container pointer to be untouched, got %p\n", container);

    hwnd = create_container_window();
    hr = AtlAxAttachControl(((void*)0), hwnd, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    DestroyWindow(hwnd);

    hwnd = create_container_window();
    container = (IUnknown *)0xdeadbeef;
    hr = AtlAxAttachControl(((void*)0), hwnd, &container);
    ok(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    ok(container == (IUnknown *)0xdeadbeef, "returned %p\n", container);
    DestroyWindow(hwnd);

    hr = CoCreateInstance(&CLSID_WebBrowser, ((void*)0), CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER,
                          &IID_IOleObject, (void **)&control);
    ok(hr == S_OK, "Expected CoCreateInstance to return S_OK, got 0x%08x\n", hr);

    if (FAILED(hr))
    {
        skip("Couldn't obtain a test IOleObject instance\n");
        return;
    }

    hr = AtlAxAttachControl(control, ((void*)0), ((void*)0));
    ok(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);

    container = ((void*)0);
    hr = AtlAxAttachControl(control, ((void*)0), &container);
    ok(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);
    ok(container != ((void*)0), "got %p\n", container);
    IUnknown_Release(container);

    hwnd = create_container_window();
    SetWindowLongW(hwnd, GWLP_USERDATA, 0xdeadbeef);
    hr = AtlAxAttachControl(control, hwnd, ((void*)0));
    ok(hr == S_OK, "Expected AtlAxAttachControl to return S_OK, got 0x%08x\n", hr);
    val = GetWindowLongW(hwnd, GWLP_USERDATA);
    ok(val == 0xdeadbeef, "returned %08x\n", val);
    DestroyWindow(hwnd);

    hwnd = create_container_window();
    SetWindowLongW(hwnd, GWLP_USERDATA, 0xdeadbeef);
    container = ((void*)0);
    hr = AtlAxAttachControl(control, hwnd, &container);
    ok(hr == S_OK, "Expected AtlAxAttachControl to return S_OK, got 0x%08x\n", hr);
    ok(container != ((void*)0), "Expected not NULL!\n");
    IUnknown_Release(container);
    val = GetWindowLongW(hwnd, GWLP_USERDATA);
    ok(val == 0xdeadbeef, "Expected unchanged, returned %08x\n", val);
    DestroyWindow(hwnd);

    IUnknown_Release(control);
}
