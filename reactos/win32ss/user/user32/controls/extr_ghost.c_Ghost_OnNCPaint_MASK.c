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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRGN ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WM_NCPAINT ; 

__attribute__((used)) static void
FUNC5(HWND hwnd, HRGN hrgn, BOOL bUnicode)
{
    HDC hdc;

    // do the default behaivour
    if (bUnicode)
        FUNC1(hwnd, WM_NCPAINT, (WPARAM)hrgn, 0);
    else
        FUNC0(hwnd, WM_NCPAINT, (WPARAM)hrgn, 0);

    // draw the ghost image
    hdc = FUNC2(hwnd);
    if (hdc)
    {
        FUNC3(hwnd, hdc);
        FUNC4(hwnd, hdc);
    }
}