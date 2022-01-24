#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IShellView ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IOleWindow ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ E_NOTIMPL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IOleWindow ; 
 int /*<<< orphan*/  IID_IShellView ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
    IShellFolder *desktop;
    IShellView *view;
    IOleWindow *wnd;
    HRESULT hr;

    hr = FUNC5(&desktop);
    FUNC6(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC0(desktop, NULL, &IID_IShellView, (void**)&view);
    FUNC6(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC3(view, &IID_IOleWindow, (void**)&wnd);
    FUNC6(hr == E_NOINTERFACE, "got (0x%08x)\n", hr);

    /* IShellView::ContextSensitiveHelp */
    hr = FUNC2(view, TRUE);
    FUNC6(hr == E_NOTIMPL, "got (0x%08x)\n", hr);
    hr = FUNC2(view, FALSE);
    FUNC6(hr == E_NOTIMPL, "got (0x%08x)\n", hr);

    FUNC4(view);
    FUNC1(desktop);
}