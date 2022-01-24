#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * ULONG ;
struct TYPE_6__ {scalar_t__ fFlags; int /*<<< orphan*/  ViewMode; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IShellView ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IDropTarget ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  TYPE_2__ FOLDERSETTINGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * E_UNEXPECTED ; 
 int /*<<< orphan*/  FVM_ICON ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_CDefView ; 
 int /*<<< orphan*/  IID_IDropTarget ; 
 int /*<<< orphan*/  IID_IShellView ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * S_FALSE ; 
 int /*<<< orphan*/ * S_OK ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  test_shellbrowser ; 

__attribute__((used)) static void FUNC15(void)
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

    hr = FUNC12(&desktop);
    FUNC14(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC3(desktop, NULL, &IID_IShellView, (void**)&view);
    FUNC14(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC8(view, &IID_CDefView, (void **)&unk);
    FUNC14(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC14(unk == (IUnknown *)view, "got %p\n", unk);
    FUNC10(unk);

if (0)
{
    /* crashes on native */
    FUNC6(view, NULL, &settings, NULL, NULL, NULL);
}

    settings.ViewMode = FVM_ICON;
    settings.fFlags = 0;
    hwnd_view = (HWND)0xdeadbeef;
    hr = FUNC6(view, NULL, &settings, NULL, NULL, &hwnd_view);
    FUNC14(hr == E_UNEXPECTED, "got (0x%08x)\n", hr);
    FUNC14(hwnd_view == 0, "got %p\n", hwnd_view);

    hwnd_view = (HWND)0xdeadbeef;
    hr = FUNC6(view, NULL, &settings, NULL, &r, &hwnd_view);
    FUNC14(hr == E_UNEXPECTED, "got (0x%08x)\n", hr);
    FUNC14(hwnd_view == 0, "got %p\n", hwnd_view);

    hwnd_view = NULL;
    hr = FUNC6(view, NULL, &settings, &test_shellbrowser, &r, &hwnd_view);
    FUNC14(hr == S_OK || FUNC13(hr == S_FALSE), "got (0x%08x)\n", hr);
    FUNC14(hwnd_view != 0, "got %p\n", hwnd_view);

    hwnd2 = (HWND)0xdeadbeef;
    hr = FUNC6(view, NULL, &settings, &test_shellbrowser, &r, &hwnd2);
    FUNC14(hr == E_UNEXPECTED, "got (0x%08x)\n", hr);
    FUNC14(hwnd2 == NULL, "got %p\n", hwnd2);

    /* ::DragLeave without drag operation */
    hr = FUNC8(view, &IID_IDropTarget, (void**)&dt);
    FUNC14(hr == S_OK, "got (0x%08x)\n", hr);
    hr = FUNC1(dt);
    FUNC14(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC2(dt);

    FUNC5(view);
    ref1 = FUNC9(view);
    hr = FUNC7(view);
    FUNC14(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC14(!FUNC11(hwnd_view), "hwnd %p still valid\n", hwnd_view);
    ref2 = FUNC9(view);
    FUNC14(ref1 > ref2, "expected %u > %u\n", ref1, ref2);
    ref1 = ref2;

    /* Show that releasing the shell view does not destroy the window */
    hr = FUNC3(desktop, NULL, &IID_IShellView, (void**)&view);
    FUNC14(hr == S_OK, "got (0x%08x)\n", hr);
    hwnd_view = NULL;
    hr = FUNC6(view, NULL, &settings, &test_shellbrowser, &r, &hwnd_view);
    FUNC14(hr == S_OK || FUNC13(hr == S_FALSE), "got (0x%08x)\n", hr);
    FUNC14(hwnd_view != NULL, "got %p\n", hwnd_view);
    FUNC14(FUNC11(hwnd_view), "hwnd %p still valid\n", hwnd_view);
    ref2 = FUNC9(view);
    FUNC14(ref2 != 0, "ref2 = %u\n", ref2);
    FUNC14(ref2 > ref1, "expected %u > %u\n", ref2, ref1);
    FUNC14(FUNC11(hwnd_view), "hwnd %p still valid\n", hwnd_view);
    FUNC0(hwnd_view);

    FUNC4(desktop);
}