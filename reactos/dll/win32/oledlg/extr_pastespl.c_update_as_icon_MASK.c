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
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ ps_struct_t ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_PS_CHANGEICON ; 
 int /*<<< orphan*/  IDC_PS_DISPLAYASICON ; 
 int /*<<< orphan*/  IDC_PS_ICONDISPLAY ; 
 int PSF_CHECKDISPLAYASICON ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(HWND hdlg, ps_struct_t *ps_struct)
{
    HWND icon_display = FUNC2(hdlg, IDC_PS_ICONDISPLAY);
    HWND display_as_icon = FUNC2(hdlg, IDC_PS_DISPLAYASICON);
    HWND change_icon = FUNC2(hdlg, IDC_PS_CHANGEICON);

    /* FIXME. No as icon handling */
    ps_struct->flags &= ~PSF_CHECKDISPLAYASICON;

    FUNC0(hdlg, IDC_PS_DISPLAYASICON, ps_struct->flags & PSF_CHECKDISPLAYASICON);
    FUNC1(display_as_icon, 0);
    FUNC3(icon_display, SW_HIDE);
    FUNC1(icon_display, 0);
    FUNC3(change_icon, SW_HIDE);
    FUNC1(change_icon, 0);
}