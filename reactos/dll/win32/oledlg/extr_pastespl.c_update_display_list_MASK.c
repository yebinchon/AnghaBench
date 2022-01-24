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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int LPARAM ;
typedef  int LONG ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  IDC_PS_DISPLAYLIST ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  LB_INSERTSTRING ; 
 int /*<<< orphan*/  LB_RESETCONTENT ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  LB_SETITEMDATA ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  WM_SETREDRAW ; 

__attribute__((used)) static void FUNC4(HWND hdlg, UINT src_list_id)
{
    LONG count, i, old_pos;
    WCHAR txt[256];
    LONG item_data;
    HWND display_list = FUNC0(hdlg, IDC_PS_DISPLAYLIST);
    HWND list = FUNC0(hdlg, src_list_id);

    old_pos = FUNC2(display_list, LB_GETCURSEL, 0, 0);
    if(old_pos == -1) old_pos = 0;

    FUNC2(display_list, WM_SETREDRAW, 0, 0);
    FUNC2(display_list, LB_RESETCONTENT, 0, 0);
    count = FUNC2(list, LB_GETCOUNT, 0, 0);
    for(i = 0; i < count; i++)
    {
        FUNC2(list, LB_GETTEXT, i, (LPARAM)txt);
        item_data = FUNC2(list, LB_GETITEMDATA, i, 0);
        FUNC2(display_list, LB_INSERTSTRING, i, (LPARAM)txt);
        FUNC2(display_list, LB_SETITEMDATA, i, item_data);
    }
    FUNC2(display_list, LB_SETCURSEL, 0, 0);
    FUNC2(display_list, WM_SETREDRAW, 1, 0);
    if(FUNC1() == hdlg)
        FUNC3(display_list);
}