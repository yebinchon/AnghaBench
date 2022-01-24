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
typedef  int WPARAM ;
struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
#define  ACTION_ACTIVATE 139 
#define  ACTION_DEACTIVATE 138 
#define  ACTION_DESTROY 137 
#define  ACTION_FIRSTMINMAX 136 
#define  ACTION_HIDE 135 
#define  ACTION_IME_NOTIFY_CLOSE 134 
#define  ACTION_IME_NOTIFY_OPEN 133 
#define  ACTION_IME_SETCONTEXT_CLOSE 132 
#define  ACTION_IME_SETCONTEXT_OPEN 131 
#define  ACTION_NCCREATE 130 
#define  ACTION_SHOW 129 
#define  ACTION_ZERO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  HEIGHT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIDTH ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_iStep ; 

__attribute__((used)) static void FUNC9(HWND hwnd, INT iAction, WPARAM wParam, LPARAM lParam)
{
    RECT rc;
    switch (iAction)
    {
        case ACTION_ZERO:
            /* does nothing */
            break;
        case ACTION_FIRSTMINMAX:
            FUNC2(hwnd, &rc);
            FUNC8(rc.right - rc.left, 0);
            FUNC8(rc.bottom - rc.top, 0);
            FUNC7(FUNC3(hwnd), FALSE);
            break;
        case ACTION_NCCREATE:
            FUNC2(hwnd, &rc);
            FUNC8(rc.right - rc.left, WIDTH);
            FUNC8(rc.bottom - rc.top, HEIGHT);
            FUNC7(FUNC3(hwnd), FALSE);
            break;
        case ACTION_SHOW:
            FUNC5(hwnd, SW_SHOWNORMAL);
            break;
        case ACTION_IME_SETCONTEXT_OPEN:
            FUNC6(wParam == 1, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            FUNC6(lParam == 0xC000000F, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case ACTION_IME_NOTIFY_OPEN:
            FUNC6(wParam == 2, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            FUNC6(lParam == 0, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case ACTION_DESTROY:
            FUNC0(hwnd);
            break;
        case ACTION_IME_SETCONTEXT_CLOSE:
            FUNC6(wParam == 0, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            FUNC6(lParam == 0xC000000F, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case ACTION_IME_NOTIFY_CLOSE:
            FUNC6(wParam == 1, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            FUNC6(lParam == 0, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case ACTION_HIDE:
            FUNC5(hwnd, SW_HIDE);
            break;
        case ACTION_DEACTIVATE:
            FUNC4(FUNC1());
            break;
        case ACTION_ACTIVATE:
            FUNC4(hwnd);
            break;
    }
}