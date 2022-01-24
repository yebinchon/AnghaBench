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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM_DROPFILES ; 
 int /*<<< orphan*/ * hwndGlobalSink ; 

WORD
FUNC6(LPTSTR pszFiles)
{
    POINT pt;
    HWND hwnd;
    RECT rc;
    HANDLE hDrop;

    if (!(hwnd = hwndGlobalSink))
        return 0;

    hwndGlobalSink = NULL;

    FUNC2(&pt);
    FUNC1(hwnd,&rc);
    FUNC5(hwnd,&pt);

    hDrop = FUNC0(pt, !FUNC4(&rc,pt), pszFiles);
        
    if (!hDrop)
        return 0;

    FUNC3(hwnd, WM_DROPFILES, (WPARAM)hDrop, 0L);

    return 1;
}