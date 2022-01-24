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
struct message {int member_1; int member_2; int /*<<< orphan*/  member_0; int /*<<< orphan*/  member_3; } ;
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HCBT_ACTIVATE ; 
 int /*<<< orphan*/  HCBT_SETFOCUS ; 
 int SWP_HIDEWINDOW ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int WA_INACTIVE ; 
 int /*<<< orphan*/  WM_ACTIVATE ; 
 int /*<<< orphan*/  WM_ENABLE ; 
 int /*<<< orphan*/  WM_KILLFOCUS ; 
 int /*<<< orphan*/  WM_NCACTIVATE ; 
 int /*<<< orphan*/  WM_SETFOCUS ; 
 int /*<<< orphan*/  WM_WINDOWPOSCHANGING ; 
 int defwinproc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int hook ; 
 int lparam ; 
 int /*<<< orphan*/  FUNC2 (struct message const*,char*,int /*<<< orphan*/ ) ; 
 int optional ; 
 int parent ; 
 int sent ; 
 int wparam ; 

__attribute__((used)) static void FUNC3(HWND dialog, HWND owner)
{
    const struct message seq[] = {
        { WM_ENABLE, parent|sent },
        { WM_WINDOWPOSCHANGING, sent|wparam, SWP_HIDEWINDOW|SWP_NOACTIVATE|SWP_NOSIZE|SWP_NOMOVE },
        { HCBT_ACTIVATE, hook|wparam, (WPARAM)owner },
        { WM_NCACTIVATE, sent|wparam|lparam, WA_INACTIVE, (LPARAM)owner },
        { WM_ACTIVATE, sent|wparam|lparam, WA_INACTIVE, (LPARAM)owner },
        { WM_WINDOWPOSCHANGING, sent|optional|wparam, SWP_NOACTIVATE|SWP_NOSIZE|SWP_NOMOVE },
        { WM_WINDOWPOSCHANGING, sent|optional|wparam, SWP_NOACTIVATE|SWP_NOSIZE|SWP_NOMOVE },
        { HCBT_SETFOCUS, hook|wparam, (WPARAM)owner },
        { WM_KILLFOCUS, sent|wparam, (WPARAM)owner },
        { WM_SETFOCUS, sent|parent|defwinproc|wparam, (WPARAM)dialog },
        { 0 }
    };

    FUNC1();
    FUNC0(dialog, 0);
    FUNC2(seq, "EndDialog2", FALSE);
}