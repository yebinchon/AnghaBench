
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IShellView ;
typedef int IShellFolder ;
typedef int IOleWindow ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOINTERFACE ;
 scalar_t__ E_NOTIMPL ;
 int FALSE ;
 int IID_IOleWindow ;
 int IID_IShellView ;
 scalar_t__ IShellFolder_CreateViewObject (int *,int *,int *,void**) ;
 int IShellFolder_Release (int *) ;
 scalar_t__ IShellView_ContextSensitiveHelp (int *,int ) ;
 scalar_t__ IShellView_QueryInterface (int *,int *,void**) ;
 int IShellView_Release (int *) ;
 scalar_t__ SHGetDesktopFolder (int **) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_IOleWindow(void)
{
    IShellFolder *desktop;
    IShellView *view;
    IOleWindow *wnd;
    HRESULT hr;

    hr = SHGetDesktopFolder(&desktop);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellFolder_CreateViewObject(desktop, ((void*)0), &IID_IShellView, (void**)&view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellView_QueryInterface(view, &IID_IOleWindow, (void**)&wnd);
    ok(hr == E_NOINTERFACE, "got (0x%08x)\n", hr);


    hr = IShellView_ContextSensitiveHelp(view, TRUE);
    ok(hr == E_NOTIMPL, "got (0x%08x)\n", hr);
    hr = IShellView_ContextSensitiveHelp(view, FALSE);
    ok(hr == E_NOTIMPL, "got (0x%08x)\n", hr);

    IShellView_Release(view);
    IShellFolder_Release(desktop);
}
