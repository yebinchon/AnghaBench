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
struct TYPE_4__ {int left; int right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SPLIT_WIDTH ; 

__attribute__((used)) static void FUNC4(HWND hWnd, int x)
{
    RECT rt;
    HDC hdc = FUNC1(hWnd);

    FUNC0(hWnd, &rt);
    rt.left = x - SPLIT_WIDTH/2;
    rt.right = x + SPLIT_WIDTH/2+1;
    FUNC2(hdc, &rt);
    FUNC3(hWnd, hdc);
}