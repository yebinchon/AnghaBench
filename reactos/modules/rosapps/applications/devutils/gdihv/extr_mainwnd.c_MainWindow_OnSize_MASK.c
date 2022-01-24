#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bottom; int right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_HANDLELIST ; 
 int /*<<< orphan*/  IDC_PROCESSLIST ; 
 int /*<<< orphan*/  IDC_REFRESHHANDLE ; 
 int /*<<< orphan*/  IDC_REFRESHPROCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int g_Separator ; 

__attribute__((used)) static LRESULT
FUNC3(HWND hMainWnd)
{
	HWND hProcessListctrl, hHandleListCtrl, hProcessRefresh, hHandleRefresh;
	RECT rect;

	hProcessListctrl = FUNC1(hMainWnd, IDC_PROCESSLIST);
	hHandleListCtrl = FUNC1(hMainWnd, IDC_HANDLELIST);
	hProcessRefresh = FUNC1(hMainWnd, IDC_REFRESHPROCESS);
	hHandleRefresh = FUNC1(hMainWnd, IDC_REFRESHHANDLE);

	FUNC0(hMainWnd, &rect);

//g_Separator = (rect.right / 2);
	FUNC2(hProcessListctrl, 5, 5, g_Separator - 5, rect.bottom - 40, TRUE);
	FUNC2(hHandleListCtrl, g_Separator + 5, 5, rect.right - g_Separator - 5, rect.bottom - 40, TRUE);
	FUNC2(hProcessRefresh, g_Separator - 90, rect.bottom - 30, 90, 25, TRUE);
	FUNC2(hHandleRefresh, rect.right - 90, rect.bottom - 30, 90, 25, TRUE);

	return 0;
}