#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_8__ {void* IsVertical; void* iCommand; int /*<<< orphan*/  hWndControl; void* HideVertical; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_6__ {int fsState; scalar_t__ dwData; int /*<<< orphan*/  fsStyle; void* idCommand; scalar_t__ iBitmap; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  TBCUSTCTL ;
typedef  TYPE_1__ TBBUTTON ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__* PTBCUSTCTL ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD_PTR ;
typedef  void* BOOL ;

/* Variables and functions */
 int CCS_VERT ; 
 void* FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 int /*<<< orphan*/  SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBSTATE_HIDDEN ; 
 int /*<<< orphan*/  TBSTYLE_SEP ; 
 int /*<<< orphan*/  TB_GETITEMRECT ; 
 int /*<<< orphan*/  TB_GETSTYLE ; 
 int /*<<< orphan*/  TB_INSERTBUTTON ; 
 void* TRUE ; 

BOOL
FUNC5(HWND hWndToolbar,
                             HWND hWndControl,
                             INT Index,
                             INT iCmd,
                             BOOL HideVertical)
{
    PTBCUSTCTL cctl;
    RECT rcControl, rcItem;

    cctl = FUNC1(ProcessHeap,
                     0,
                     sizeof(TBCUSTCTL));
    if (cctl == NULL)
        return FALSE;

    cctl->HideVertical = HideVertical;
    cctl->hWndControl = hWndControl;
    cctl->iCommand = iCmd;

    if (FUNC0(hWndControl,
                      &rcControl))
    {
        TBBUTTON tbtn = {0};

        tbtn.iBitmap = rcControl.right - rcControl.left;
        tbtn.idCommand = iCmd;
        tbtn.fsStyle = TBSTYLE_SEP;
        tbtn.dwData = (DWORD_PTR)cctl;

        if (FUNC2(hWndToolbar,
                        TB_GETSTYLE,
                        0,
                        0) & CCS_VERT)
        {
            if (HideVertical)
                tbtn.fsState |= TBSTATE_HIDDEN;

            cctl->IsVertical = TRUE;
        }
        else
            cctl->IsVertical = FALSE;

        if (FUNC2(hWndToolbar,
                        TB_INSERTBUTTON,
                        (WPARAM)Index,
                        (LPARAM)&tbtn))
        {
            if (FUNC2(hWndToolbar,
                            TB_GETITEMRECT,
                            (WPARAM)Index,
                            (LPARAM)&rcItem))
            {
                FUNC3(hWndControl,
                             NULL,
                             rcItem.left,
                             rcItem.top,
                             rcItem.right - rcItem.left,
                             rcItem.bottom - rcItem.top,
                             SWP_NOZORDER);

                FUNC4(hWndControl,
                           SW_SHOW);

                return TRUE;
            }
            else if (tbtn.fsState & TBSTATE_HIDDEN)
            {
                FUNC4(hWndControl,
                           SW_HIDE);
            }
        }
    }

    return FALSE;
}