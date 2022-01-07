
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * ULONG ;
struct TYPE_6__ {scalar_t__ fFlags; int ViewMode; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int IUnknown ;
typedef int IShellView ;
typedef int IShellFolder ;
typedef int IDropTarget ;
typedef int * HWND ;
typedef int * HRESULT ;
typedef TYPE_2__ FOLDERSETTINGS ;


 int DestroyWindow (int *) ;
 int * E_UNEXPECTED ;
 int FVM_ICON ;
 int * IDropTarget_DragLeave (int *) ;
 int IDropTarget_Release (int *) ;
 int IID_CDefView ;
 int IID_IDropTarget ;
 int IID_IShellView ;
 int * IShellFolder_CreateViewObject (int *,int *,int *,void**) ;
 int IShellFolder_Release (int *) ;
 int IShellView_AddRef (int *) ;
 int * IShellView_CreateViewWindow (int *,int *,TYPE_2__*,int *,TYPE_1__*,int **) ;
 int * IShellView_DestroyViewWindow (int *) ;
 int * IShellView_QueryInterface (int *,int *,void**) ;
 int * IShellView_Release (int *) ;
 int IUnknown_Release (int *) ;
 int IsWindow (int *) ;
 int * SHGetDesktopFolder (int **) ;
 int * S_FALSE ;
 int * S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int *,...) ;
 int test_shellbrowser ;

__attribute__((used)) static void test_CreateViewWindow(void)
{
    IShellFolder *desktop;
    HWND hwnd_view, hwnd2;
    FOLDERSETTINGS settings;
    IShellView *view;
    IDropTarget *dt;
    HRESULT hr;
    RECT r = {0};
    ULONG ref1, ref2;
    IUnknown *unk;

    hr = SHGetDesktopFolder(&desktop);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellFolder_CreateViewObject(desktop, ((void*)0), &IID_IShellView, (void**)&view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellView_QueryInterface(view, &IID_CDefView, (void **)&unk);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(unk == (IUnknown *)view, "got %p\n", unk);
    IUnknown_Release(unk);

if (0)
{

    IShellView_CreateViewWindow(view, ((void*)0), &settings, ((void*)0), ((void*)0), ((void*)0));
}

    settings.ViewMode = FVM_ICON;
    settings.fFlags = 0;
    hwnd_view = (HWND)0xdeadbeef;
    hr = IShellView_CreateViewWindow(view, ((void*)0), &settings, ((void*)0), ((void*)0), &hwnd_view);
    ok(hr == E_UNEXPECTED, "got (0x%08x)\n", hr);
    ok(hwnd_view == 0, "got %p\n", hwnd_view);

    hwnd_view = (HWND)0xdeadbeef;
    hr = IShellView_CreateViewWindow(view, ((void*)0), &settings, ((void*)0), &r, &hwnd_view);
    ok(hr == E_UNEXPECTED, "got (0x%08x)\n", hr);
    ok(hwnd_view == 0, "got %p\n", hwnd_view);

    hwnd_view = ((void*)0);
    hr = IShellView_CreateViewWindow(view, ((void*)0), &settings, &test_shellbrowser, &r, &hwnd_view);
    ok(hr == S_OK || broken(hr == S_FALSE), "got (0x%08x)\n", hr);
    ok(hwnd_view != 0, "got %p\n", hwnd_view);

    hwnd2 = (HWND)0xdeadbeef;
    hr = IShellView_CreateViewWindow(view, ((void*)0), &settings, &test_shellbrowser, &r, &hwnd2);
    ok(hr == E_UNEXPECTED, "got (0x%08x)\n", hr);
    ok(hwnd2 == ((void*)0), "got %p\n", hwnd2);


    hr = IShellView_QueryInterface(view, &IID_IDropTarget, (void**)&dt);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    hr = IDropTarget_DragLeave(dt);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    IDropTarget_Release(dt);

    IShellView_AddRef(view);
    ref1 = IShellView_Release(view);
    hr = IShellView_DestroyViewWindow(view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(!IsWindow(hwnd_view), "hwnd %p still valid\n", hwnd_view);
    ref2 = IShellView_Release(view);
    ok(ref1 > ref2, "expected %u > %u\n", ref1, ref2);
    ref1 = ref2;


    hr = IShellFolder_CreateViewObject(desktop, ((void*)0), &IID_IShellView, (void**)&view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    hwnd_view = ((void*)0);
    hr = IShellView_CreateViewWindow(view, ((void*)0), &settings, &test_shellbrowser, &r, &hwnd_view);
    ok(hr == S_OK || broken(hr == S_FALSE), "got (0x%08x)\n", hr);
    ok(hwnd_view != ((void*)0), "got %p\n", hwnd_view);
    ok(IsWindow(hwnd_view), "hwnd %p still valid\n", hwnd_view);
    ref2 = IShellView_Release(view);
    ok(ref2 != 0, "ref2 = %u\n", ref2);
    ok(ref2 > ref1, "expected %u > %u\n", ref2, ref1);
    ok(IsWindow(hwnd_view), "hwnd %p still valid\n", hwnd_view);
    DestroyWindow(hwnd_view);

    IShellFolder_Release(desktop);
}
