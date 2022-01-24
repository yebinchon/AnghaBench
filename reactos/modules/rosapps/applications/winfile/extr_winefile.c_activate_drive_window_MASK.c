#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {scalar_t__ hmdiclient; } ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
struct TYPE_5__ {TYPE_1__ root; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ HWND ;
typedef  TYPE_2__ ChildWnd ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__ Globals ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_MDIACTIVATE ; 
 int _MAX_DRIVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC7(LPCWSTR path)
{
	WCHAR drv1[_MAX_DRIVE], drv2[_MAX_DRIVE];
	HWND child_wnd;

	FUNC5(path, drv1, 0, 0, 0);

        /* search for an already open window for the same drive */
	for(child_wnd=FUNC0(Globals.hmdiclient,GW_CHILD); child_wnd; child_wnd=FUNC0(child_wnd, GW_HWNDNEXT)) {
		ChildWnd* child = (ChildWnd*)FUNC1(child_wnd, GWLP_USERDATA);

		if (child) {
			FUNC5(child->root.path, drv2, 0, 0, 0);

			if (!FUNC6(drv2, drv1)) {
				FUNC3(Globals.hmdiclient, WM_MDIACTIVATE, (WPARAM)child_wnd, 0);

				if (FUNC2(child_wnd))
					FUNC4(child_wnd, SW_SHOWNORMAL);

				return TRUE;
			}
		}
	}

	return FALSE;
}