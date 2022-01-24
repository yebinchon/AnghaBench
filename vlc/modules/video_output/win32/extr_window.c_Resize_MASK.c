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
struct TYPE_8__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_window_t ;
struct TYPE_9__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_2__ vout_window_sys_t ;
struct TYPE_10__ {unsigned int right; unsigned int bottom; } ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(vout_window_t *wnd, unsigned width, unsigned height)
{
    vout_window_sys_t *sys = wnd->sys;

    /* When you create a window you give the dimensions you wish it to
     * have. Unfortunatly these dimensions will include the borders and
     * titlebar. We use the following function to find out the size of
     * the window corresponding to the useable surface we want */
    RECT decorated_window = {
        .right = width,
        .bottom = height,
    };
    LONG i_window_style = FUNC1(sys->hwnd, GWL_STYLE);
    FUNC0( &decorated_window, i_window_style, 0 );
    FUNC4(sys->hwnd, 0, 0, 0,
                 FUNC3(decorated_window), FUNC2(decorated_window),
                 SWP_NOZORDER|SWP_NOMOVE);
}