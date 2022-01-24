#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ count; } ;
struct TYPE_9__ {scalar_t__ fFlags; int /*<<< orphan*/  ViewMode; } ;
struct TYPE_8__ {void* x; void* y; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ POINT ;
typedef  void* PITEMID_CHILD ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IShellView ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IShellBrowser ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  IFolderView2 ;
typedef  int /*<<< orphan*/  IFolderView ;
typedef  void* HWND ;
typedef  void* HRESULT ;
typedef  TYPE_2__ FOLDERSETTINGS ;

/* Variables and functions */
 void* E_FAIL ; 
 void* E_INVALIDARG ; 
 void* E_POINTER ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FVM_ICON ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IFolderView ; 
 int /*<<< orphan*/  IID_IFolderView2 ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 int /*<<< orphan*/  IID_IShellView ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (void*) ; 
 size_t LISTVIEW_SEQ_INDEX ; 
 void* FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  LVM_GETITEMSPACING ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 void* FUNC21 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SVGIO_ALLVIEW ; 
 void* S_FALSE ; 
 void* S_OK ; 
 scalar_t__ FUNC22 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  empty_seq ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  folderview_getfocused_seq ; 
 int /*<<< orphan*/  folderview_getselectionmarked_seq ; 
 int /*<<< orphan*/  folderview_getspacing_seq ; 
 int /*<<< orphan*/  FUNC26 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__**,size_t,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__** sequences ; 
 void* FUNC28 (void*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 

__attribute__((used)) static void FUNC30(void)
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

    hr = FUNC21(&desktop);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC12(desktop, NULL, &IID_IShellView, (void**)&view);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC16(view, &IID_IFolderView, (void**)&fv);
    if (hr != S_OK)
    {
        FUNC29("IFolderView not supported by desktop folder\n");
        FUNC17(view);
        FUNC13(desktop);
        return;
    }

    /* call methods before window creation */
    hr = FUNC5(fv, NULL);
    FUNC26(hr == S_FALSE || FUNC24(hr == S_OK) /* win7 */, "got (0x%08x)\n", hr);

    pidl = (void*)0xdeadbeef;
    hr = FUNC6(fv, 0, &pidl);
    FUNC26(hr == E_INVALIDARG || FUNC24(hr == E_FAIL) /* < Vista */, "got (0x%08x)\n", hr);
    FUNC26(pidl == 0 || FUNC24(pidl == (void*)0xdeadbeef) /* < Vista */, "got %p\n", pidl);

if (0)
{
    /* crashes on Vista and Win2k8 - List not created yet case */
    FUNC5(fv, &pt);

    /* crashes on XP */
    FUNC4(fv, NULL);
    FUNC2(fv, NULL);

    /* crashes on Vista+ */
    FUNC6(fv, 0, NULL);
}

    browser = FUNC10();

    settings.ViewMode = FVM_ICON;
    settings.fFlags = 0;
    hwnd_view = (HWND)0xdeadbeef;
    FUNC23(&r, 0, 0, 100, 100);
    hr = FUNC14(view, NULL, &settings, browser, &r, &hwnd_view);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC26(FUNC19(hwnd_view), "got %p\n", hwnd_view);

    hwnd_list = FUNC28(hwnd_view);
    if (!hwnd_list)
    {
        FUNC29("Failed to subclass ListView control\n");
        FUNC11(browser);
        FUNC9(fv);
        FUNC17(view);
        FUNC13(desktop);
        return;
    }

    /* IFolderView::GetSpacing */
    FUNC25(sequences, NUM_MSG_SEQUENCES);
    hr = FUNC5(fv, NULL);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC27(sequences, LISTVIEW_SEQ_INDEX, empty_seq, "IFolderView::GetSpacing, empty", FALSE);

    FUNC25(sequences, NUM_MSG_SEQUENCES);
    hr = FUNC5(fv, &pt);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    /* fails with empty sequence on win7 for unknown reason */
    if (sequences[LISTVIEW_SEQ_INDEX]->count)
    {
        FUNC27(sequences, LISTVIEW_SEQ_INDEX, folderview_getspacing_seq, "IFolderView::GetSpacing", FALSE);
        FUNC26(pt.x > 0, "got %d\n", pt.x);
        FUNC26(pt.y > 0, "got %d\n", pt.y);
        ret = FUNC22(hwnd_list, LVM_GETITEMSPACING, 0, 0);
        FUNC26(pt.x == FUNC20(ret) && pt.y == FUNC0(ret), "got (%d, %d)\n", FUNC20(ret), FUNC0(ret));
    }

    /* IFolderView::ItemCount */
if (0)
{
    /* crashes on XP */
    FUNC7(fv, SVGIO_ALLVIEW, NULL);
}

    FUNC25(sequences, NUM_MSG_SEQUENCES);
    FUNC7(fv, SVGIO_ALLVIEW, &count);

    /* IFolderView::GetSelectionMarkedItem */
if (0)
{
    /* crashes on XP */
    FUNC4(fv, NULL);
}

    FUNC25(sequences, NUM_MSG_SEQUENCES);
    hr = FUNC4(fv, &ret);
    if (count)
        FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    else
        FUNC26(hr == S_FALSE, "got (0x%08x)\n", hr);
    FUNC27(sequences, LISTVIEW_SEQ_INDEX, folderview_getselectionmarked_seq,
                "IFolderView::GetSelectionMarkedItem", FALSE);

    /* IFolderView::GetFocusedItem */
    FUNC25(sequences, NUM_MSG_SEQUENCES);
    hr = FUNC2(fv, &ret);
    if (count)
        FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    else
        FUNC26(hr == S_FALSE, "got (0x%08x)\n", hr);
    FUNC27(sequences, LISTVIEW_SEQ_INDEX, folderview_getfocused_seq,
                "IFolderView::GetFocusedItem", FALSE);

    /* IFolderView::GetFolder, just return pointer */
if (0)
{
    /* crashes on XP */
    FUNC3(fv, NULL, (void**)&folder);
    FUNC3(fv, NULL, NULL);
}

    hr = FUNC3(fv, &IID_IShellFolder, NULL);
    FUNC26(hr == E_POINTER, "got (0x%08x)\n", hr);

    hr = FUNC3(fv, &IID_IShellFolder, (void**)&folder);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC26(desktop == folder, "\n");
    if (folder) FUNC13(folder);

    hr = FUNC3(fv, &IID_IUnknown, (void**)&unk);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    if (unk) FUNC18(unk);

    hr = FUNC8(fv, &IID_IFolderView2, (void**)&fv2);
    if (hr != S_OK)
        FUNC29("IFolderView2 is not supported.\n");
    if (fv2) FUNC1(fv2);

    hr = FUNC15(view);
    FUNC26(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC26(!FUNC19(hwnd_view), "hwnd %p still valid\n", hwnd_view);

    FUNC11(browser);
    FUNC9(fv);
    FUNC17(view);
    FUNC13(desktop);
}