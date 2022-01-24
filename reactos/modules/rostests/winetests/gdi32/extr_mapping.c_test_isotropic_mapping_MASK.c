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
struct TYPE_4__ {int cx; int cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  MM_ISOTROPIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    SIZE win, vp;
    HDC hdc = FUNC0(0);
    
    FUNC4(hdc, MM_ISOTROPIC);
    
    /* MM_ISOTROPIC is set up like MM_LOMETRIC.
       Initial values after SetMapMode():
       (1 inch = 25.4 mm)
       
                       Windows 9x:               Windows NT:
       Window Ext:     254 x -254                HORZSIZE*10 x VERTSIZE*10
       Viewport Ext:   LOGPIXELSX x LOGPIXELSY   HORZRES x -VERTRES
       
       To test without rounding errors, we have to use multiples of
       these values!
     */
    
    FUNC2(hdc, &win);
    FUNC1(hdc, &vp);
    
    FUNC5(hdc, 10 * vp.cx, 10 * vp.cy, 10 * vp.cx, 10 * vp.cy);
    FUNC6(hdc, win.cx, win.cy, 10 * vp.cx, 10 * vp.cy);
    FUNC6(hdc, 2 * win.cx, win.cy, 10 * vp.cx, 5 * vp.cy);
    FUNC6(hdc, win.cx, win.cy, 5 * vp.cx, 5 * vp.cy);
    FUNC5(hdc, 4 * vp.cx, 2 * vp.cy, 2 * vp.cx, 2 * vp.cy);
    FUNC5(hdc, vp.cx, 2 * vp.cy, vp.cx, vp.cy);
    FUNC5(hdc, 2 * vp.cx, 2 * vp.cy, 2 * vp.cx, 2 * vp.cy);
    FUNC5(hdc, 4 * vp.cx, 2 * vp.cy, 2 * vp.cx, 2 * vp.cy);
    FUNC6(hdc, 4 * win.cx, 2 * win.cy, 2 * vp.cx, vp.cy);
    FUNC5(hdc, -2 * vp.cx, -4 * vp.cy, -2 * vp.cx, -vp.cy);
    FUNC5(hdc, -2 * vp.cx, -1 * vp.cy, -2 * vp.cx, -vp.cy);    
    FUNC6(hdc, -4 * win.cx, -2 * win.cy, -2 * vp.cx, -vp.cy);
    FUNC6(hdc, 4 * win.cx, -4 * win.cy, -vp.cx, -vp.cy);
    
    FUNC3(0, hdc);
}