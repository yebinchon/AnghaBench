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
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ HMENU ;
typedef  int DWORD ;

/* Variables and functions */
 int BS_NOTIFY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ID_BUTTON ; 
 int /*<<< orphan*/  WC_BUTTONA ; 
 int WS_CHILD ; 
 int /*<<< orphan*/  button_subclass_proc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HWND FUNC3(DWORD style, HWND parent)
{
    HMENU menuid = 0;
    HWND hwnd;

    if (parent)
    {
        style |= WS_CHILD|BS_NOTIFY;
        menuid = (HMENU)ID_BUTTON;
    }
    hwnd = FUNC0(0, WC_BUTTONA, "test", style, 0, 0, 50, 14, parent, menuid, 0, NULL);
    FUNC1(hwnd != NULL, "failed to create a button, 0x%08x, %p\n", style, parent);
    FUNC2(hwnd, button_subclass_proc, 0, 0);
    return hwnd;
}