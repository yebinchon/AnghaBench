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
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_5__ {scalar_t__ bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__* PRECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_SETPARTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SIZE ; 
 int /*<<< orphan*/  hMDIClient ; 
 int /*<<< orphan*/  hStatusBar ; 
 int /*<<< orphan*/  hToolBar ; 

__attribute__((used)) static void FUNC4(HWND hWnd, PRECT prect)
{
    RECT rt;

    if (FUNC1(hToolBar)) {
        FUNC3(hToolBar, WM_SIZE, 0, 0);
        FUNC0(hToolBar, &rt);
        prect->top = rt.bottom+3;
        prect->bottom -= rt.bottom+3;
    }
    if (FUNC1(hStatusBar)) {
        int parts[] = {300, 500};

        FUNC3(hStatusBar, WM_SIZE, 0, 0);
        FUNC3(hStatusBar, SB_SETPARTS, 2, (LPARAM)&parts);
        FUNC0(hStatusBar, &rt);
        prect->bottom -= rt.bottom;
    }
    FUNC2(hMDIClient, prect->left-1,prect->top-1,prect->right+2,prect->bottom+1, TRUE);
}