
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ count; } ;
struct TYPE_9__ {scalar_t__ fFlags; int ViewMode; } ;
struct TYPE_8__ {void* x; void* y; } ;
typedef int RECT ;
typedef TYPE_1__ POINT ;
typedef void* PITEMID_CHILD ;
typedef int IUnknown ;
typedef int IShellView ;
typedef int IShellFolder ;
typedef int IShellBrowser ;
typedef scalar_t__ INT ;
typedef int IFolderView2 ;
typedef int IFolderView ;
typedef void* HWND ;
typedef void* HRESULT ;
typedef TYPE_2__ FOLDERSETTINGS ;


 void* E_FAIL ;
 void* E_INVALIDARG ;
 void* E_POINTER ;
 int FALSE ;
 int FVM_ICON ;
 void* HIWORD (scalar_t__) ;
 int IFolderView2_Release (int *) ;
 void* IFolderView_GetFocusedItem (int *,scalar_t__*) ;
 void* IFolderView_GetFolder (int *,int *,void**) ;
 void* IFolderView_GetSelectionMarkedItem (int *,scalar_t__*) ;
 void* IFolderView_GetSpacing (int *,TYPE_1__*) ;
 void* IFolderView_Item (int *,int ,void**) ;
 int IFolderView_ItemCount (int *,int ,scalar_t__*) ;
 void* IFolderView_QueryInterface (int *,int *,void**) ;
 int IFolderView_Release (int *) ;
 int IID_IFolderView ;
 int IID_IFolderView2 ;
 int IID_IShellFolder ;
 int IID_IShellView ;
 int IID_IUnknown ;
 int * IShellBrowserImpl_Construct () ;
 int IShellBrowser_Release (int *) ;
 void* IShellFolder_CreateViewObject (int *,int *,int *,void**) ;
 int IShellFolder_Release (int *) ;
 void* IShellView_CreateViewWindow (int *,int *,TYPE_2__*,int *,int *,void**) ;
 void* IShellView_DestroyViewWindow (int *) ;
 void* IShellView_QueryInterface (int *,int *,void**) ;
 int IShellView_Release (int *) ;
 int IUnknown_Release (int *) ;
 int IsWindow (void*) ;
 size_t LISTVIEW_SEQ_INDEX ;
 void* LOWORD (scalar_t__) ;
 int LVM_GETITEMSPACING ;
 int NUM_MSG_SEQUENCES ;
 void* SHGetDesktopFolder (int **) ;
 int SVGIO_ALLVIEW ;
 void* S_FALSE ;
 void* S_OK ;
 scalar_t__ SendMessageA (void*,int ,int ,int ) ;
 int SetRect (int *,int ,int ,int,int) ;
 scalar_t__ broken (int) ;
 int empty_seq ;
 int flush_sequences (TYPE_3__**,int ) ;
 int folderview_getfocused_seq ;
 int folderview_getselectionmarked_seq ;
 int folderview_getspacing_seq ;
 int ok (int,char*,...) ;
 int ok_sequence (TYPE_3__**,size_t,int ,char*,int ) ;
 TYPE_3__** sequences ;
 void* subclass_listview (void*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_IFolderView(void)
{
    IShellFolder *desktop, *folder;
    FOLDERSETTINGS settings;
    IShellView *view;
    IShellBrowser *browser;
    IFolderView2 *fv2;
    IFolderView *fv;
    IUnknown *unk;
    HWND hwnd_view, hwnd_list;
    PITEMID_CHILD pidl;
    HRESULT hr;
    INT ret, count;
    POINT pt;
    RECT r;

    hr = SHGetDesktopFolder(&desktop);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellFolder_CreateViewObject(desktop, ((void*)0), &IID_IShellView, (void**)&view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellView_QueryInterface(view, &IID_IFolderView, (void**)&fv);
    if (hr != S_OK)
    {
        win_skip("IFolderView not supported by desktop folder\n");
        IShellView_Release(view);
        IShellFolder_Release(desktop);
        return;
    }


    hr = IFolderView_GetSpacing(fv, ((void*)0));
    ok(hr == S_FALSE || broken(hr == S_OK) , "got (0x%08x)\n", hr);

    pidl = (void*)0xdeadbeef;
    hr = IFolderView_Item(fv, 0, &pidl);
    ok(hr == E_INVALIDARG || broken(hr == E_FAIL) , "got (0x%08x)\n", hr);
    ok(pidl == 0 || broken(pidl == (void*)0xdeadbeef) , "got %p\n", pidl);

if (0)
{

    IFolderView_GetSpacing(fv, &pt);


    IFolderView_GetSelectionMarkedItem(fv, ((void*)0));
    IFolderView_GetFocusedItem(fv, ((void*)0));


    IFolderView_Item(fv, 0, ((void*)0));
}

    browser = IShellBrowserImpl_Construct();

    settings.ViewMode = FVM_ICON;
    settings.fFlags = 0;
    hwnd_view = (HWND)0xdeadbeef;
    SetRect(&r, 0, 0, 100, 100);
    hr = IShellView_CreateViewWindow(view, ((void*)0), &settings, browser, &r, &hwnd_view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(IsWindow(hwnd_view), "got %p\n", hwnd_view);

    hwnd_list = subclass_listview(hwnd_view);
    if (!hwnd_list)
    {
        win_skip("Failed to subclass ListView control\n");
        IShellBrowser_Release(browser);
        IFolderView_Release(fv);
        IShellView_Release(view);
        IShellFolder_Release(desktop);
        return;
    }


    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    hr = IFolderView_GetSpacing(fv, ((void*)0));
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok_sequence(sequences, LISTVIEW_SEQ_INDEX, empty_seq, "IFolderView::GetSpacing, empty", FALSE);

    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    hr = IFolderView_GetSpacing(fv, &pt);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    if (sequences[LISTVIEW_SEQ_INDEX]->count)
    {
        ok_sequence(sequences, LISTVIEW_SEQ_INDEX, folderview_getspacing_seq, "IFolderView::GetSpacing", FALSE);
        ok(pt.x > 0, "got %d\n", pt.x);
        ok(pt.y > 0, "got %d\n", pt.y);
        ret = SendMessageA(hwnd_list, LVM_GETITEMSPACING, 0, 0);
        ok(pt.x == LOWORD(ret) && pt.y == HIWORD(ret), "got (%d, %d)\n", LOWORD(ret), HIWORD(ret));
    }


if (0)
{

    IFolderView_ItemCount(fv, SVGIO_ALLVIEW, ((void*)0));
}

    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    IFolderView_ItemCount(fv, SVGIO_ALLVIEW, &count);


if (0)
{

    IFolderView_GetSelectionMarkedItem(fv, ((void*)0));
}

    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    hr = IFolderView_GetSelectionMarkedItem(fv, &ret);
    if (count)
        ok(hr == S_OK, "got (0x%08x)\n", hr);
    else
        ok(hr == S_FALSE, "got (0x%08x)\n", hr);
    ok_sequence(sequences, LISTVIEW_SEQ_INDEX, folderview_getselectionmarked_seq,
                "IFolderView::GetSelectionMarkedItem", FALSE);


    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    hr = IFolderView_GetFocusedItem(fv, &ret);
    if (count)
        ok(hr == S_OK, "got (0x%08x)\n", hr);
    else
        ok(hr == S_FALSE, "got (0x%08x)\n", hr);
    ok_sequence(sequences, LISTVIEW_SEQ_INDEX, folderview_getfocused_seq,
                "IFolderView::GetFocusedItem", FALSE);


if (0)
{

    IFolderView_GetFolder(fv, ((void*)0), (void**)&folder);
    IFolderView_GetFolder(fv, ((void*)0), ((void*)0));
}

    hr = IFolderView_GetFolder(fv, &IID_IShellFolder, ((void*)0));
    ok(hr == E_POINTER, "got (0x%08x)\n", hr);

    hr = IFolderView_GetFolder(fv, &IID_IShellFolder, (void**)&folder);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(desktop == folder, "\n");
    if (folder) IShellFolder_Release(folder);

    hr = IFolderView_GetFolder(fv, &IID_IUnknown, (void**)&unk);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    if (unk) IUnknown_Release(unk);

    hr = IFolderView_QueryInterface(fv, &IID_IFolderView2, (void**)&fv2);
    if (hr != S_OK)
        win_skip("IFolderView2 is not supported.\n");
    if (fv2) IFolderView2_Release(fv2);

    hr = IShellView_DestroyViewWindow(view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(!IsWindow(hwnd_view), "hwnd %p still valid\n", hwnd_view);

    IShellBrowser_Release(browser);
    IFolderView_Release(fv);
    IShellView_Release(view);
    IShellFolder_Release(desktop);
}
