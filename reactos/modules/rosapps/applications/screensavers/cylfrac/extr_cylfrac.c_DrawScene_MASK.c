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
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  FUNC3 (int,double,double,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int angle ; 
 int /*<<< orphan*/  bval ; 
 int colorh ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,double,double,double) ; 
 int /*<<< orphan*/  gval ; 
 int /*<<< orphan*/  lvls ; 
 int /*<<< orphan*/  rval ; 

void FUNC7(HWND hwnd, HDC dc, int ticks)
{
    PAINTSTRUCT ps;
    dc = FUNC0(hwnd, &ps);
    FUNC5(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    FUNC6(ticks * 0.01, 0.0, 1.0, -0.5);
    angle += ticks * 0.01;
    colorh += ticks * 0.003;
    if (colorh > 360.0) colorh -= 360.0;
    FUNC3(colorh, 1.0, 0.7, &rval, &gval, &bval);
    FUNC1(lvls, angle, 0.2);
    FUNC4(dc);
    FUNC2(hwnd, &ps);
}