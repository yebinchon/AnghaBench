#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int bottom; unsigned int top; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(HWND Wnd, unsigned Height)
{
    RECT ClientRect, WindowRect;

    FUNC1(Wnd, &WindowRect);
    FUNC0(Wnd, &ClientRect);
    FUNC2(Wnd, NULL, 0, 0,
                 WindowRect.right - WindowRect.left,
                 Height + (WindowRect.bottom - WindowRect.top) -
                 (ClientRect.bottom - ClientRect.top),
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);

    /* Workaround for a bug in Windows' edit control
       (multi-line mode) */
    FUNC1(Wnd, &WindowRect);
    FUNC2(Wnd, NULL, 0, 0,
                 WindowRect.right - WindowRect.left + 1,
                 WindowRect.bottom - WindowRect.top + 1,
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);
    FUNC2(Wnd, NULL, 0, 0,
                 WindowRect.right - WindowRect.left,
                 WindowRect.bottom - WindowRect.top,
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);

    FUNC0(Wnd, &ClientRect);
    FUNC3(ClientRect.bottom - ClientRect.top == Height,
        "The client height should be %d, but is %d\n",
        Height, ClientRect.bottom - ClientRect.top);
}