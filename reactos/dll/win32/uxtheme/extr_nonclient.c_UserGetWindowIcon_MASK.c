#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwExStyle; } ;
struct TYPE_5__ {TYPE_1__ wi; int /*<<< orphan*/  hWnd; } ;
typedef  int /*<<< orphan*/  PDWORD_PTR ;
typedef  TYPE_2__* PDRAW_CONTEXT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/  GCLP_HICON ; 
 int /*<<< orphan*/  GCLP_HICONSM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICON_BIG ; 
 int /*<<< orphan*/  ICON_SMALL ; 
 int /*<<< orphan*/  ICON_SMALL2 ; 
 scalar_t__ IDI_WINLOGO ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMTO_ABORTIFHUNG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETICON ; 
 int WS_EX_DLGMODALFRAME ; 

__attribute__((used)) static HICON
FUNC3(PDRAW_CONTEXT pcontext)
{
    HICON hIcon = NULL;

    FUNC2(pcontext->hWnd, WM_GETICON, ICON_SMALL2, 0, SMTO_ABORTIFHUNG, 1000, (PDWORD_PTR)&hIcon);

    if (!hIcon)
        FUNC2(pcontext->hWnd, WM_GETICON, ICON_SMALL, 0, SMTO_ABORTIFHUNG, 1000, (PDWORD_PTR)&hIcon);

    if (!hIcon)
        FUNC2(pcontext->hWnd, WM_GETICON, ICON_BIG, 0, SMTO_ABORTIFHUNG, 1000, (PDWORD_PTR)&hIcon);

    if (!hIcon)
        hIcon = (HICON)FUNC0(pcontext->hWnd, GCLP_HICONSM);

    if (!hIcon)
        hIcon = (HICON)FUNC0(pcontext->hWnd, GCLP_HICON);

    // See also win32ss/user/ntuser/nonclient.c!NC_IconForWindow
    if (!hIcon && !(pcontext->wi.dwExStyle & WS_EX_DLGMODALFRAME))
        hIcon = FUNC1(NULL, (LPCWSTR)IDI_WINLOGO);

    return hIcon;
}