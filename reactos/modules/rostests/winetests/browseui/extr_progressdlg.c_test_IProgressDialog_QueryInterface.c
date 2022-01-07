
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IProgressDialog ;
typedef int IOleWindow ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ProgressDialog ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void*) ;
 scalar_t__ E_POINTER ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IOleWindow ;
 int IID_IProgressDialog ;
 int IID_IUnknown ;
 scalar_t__ IOleWindow_QueryInterface (int *,int *,void**) ;
 int IOleWindow_Release (int *) ;
 scalar_t__ IProgressDialog_QueryInterface (int *,int *,void**) ;
 int IProgressDialog_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int win_skip (char*,scalar_t__) ;

__attribute__((used)) static void test_IProgressDialog_QueryInterface(void)
{
    IProgressDialog *dlg;
    IProgressDialog *dlg2;
    IOleWindow *olewindow;
    IUnknown *unk;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_ProgressDialog, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IProgressDialog, (void*)&dlg);
    if (FAILED(hr)) {
        win_skip("CoCreateInstance for IProgressDialog returned 0x%x\n", hr);
        return;
    }

    hr = IProgressDialog_QueryInterface(dlg, &IID_IUnknown, ((void*)0));
    ok(hr == E_POINTER, "got 0x%x (expected E_POINTER)\n", hr);

    hr = IProgressDialog_QueryInterface(dlg, &IID_IUnknown, (void**)&unk);
    ok(hr == S_OK, "QueryInterface (IUnknown) returned 0x%x\n", hr);
    if (SUCCEEDED(hr)) {
        IUnknown_Release(unk);
    }

    hr = IProgressDialog_QueryInterface(dlg, &IID_IOleWindow, (void**)&olewindow);
    ok(hr == S_OK, "QueryInterface (IOleWindow) returned 0x%x\n", hr);
    if (SUCCEEDED(hr)) {
        hr = IOleWindow_QueryInterface(olewindow, &IID_IProgressDialog, (void**)&dlg2);
        ok(hr == S_OK, "QueryInterface (IProgressDialog) returned 0x%x\n", hr);
        if (SUCCEEDED(hr)) {
            IProgressDialog_Release(dlg2);
        }
        IOleWindow_Release(olewindow);
    }
    IProgressDialog_Release(dlg);
}
