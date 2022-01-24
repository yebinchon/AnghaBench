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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int /*<<< orphan*/  wnd_class; int /*<<< orphan*/  msg_hwnd; } ;
typedef  TYPE_1__ SPY_INSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  GCW_ATOM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PropSheetInfoStr ; 
 scalar_t__ WC_DIALOG ; 
 int /*<<< orphan*/  WC_PROPSHEETW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( SPY_INSTANCE *sp_e )
{
    /* special code to detect a property sheet dialog   */
    if ((FUNC0(sp_e->msg_hwnd, GCW_ATOM) == (ULONG_PTR)WC_DIALOG) &&
        (FUNC2(sp_e->msg_hwnd, PropSheetInfoStr))) {
        FUNC3(sp_e->wnd_class, WC_PROPSHEETW);
    }
    else {
        FUNC1(sp_e->msg_hwnd, sp_e->wnd_class, sizeof(sp_e->wnd_class)/sizeof(WCHAR));
    }
}