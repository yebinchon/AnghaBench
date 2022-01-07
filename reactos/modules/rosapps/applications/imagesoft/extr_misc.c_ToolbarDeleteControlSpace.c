
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hWndControl; } ;
struct TYPE_5__ {int fsStyle; scalar_t__ dwData; } ;
typedef TYPE_1__ TBBUTTON ;
typedef TYPE_2__* PTBCUSTCTL ;
typedef int HWND ;
typedef int BOOL ;


 int DestroyWindow (int ) ;
 int FALSE ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int ProcessHeap ;
 int TBSTYLE_SEP ;
 int TRUE ;

BOOL
ToolbarDeleteControlSpace(HWND hWndToolbar,
                          const TBBUTTON *ptbButton)
{
    if ((ptbButton->fsStyle & TBSTYLE_SEP) &&
        ptbButton->dwData != 0)
    {
        PTBCUSTCTL cctl = (PTBCUSTCTL)ptbButton->dwData;

        DestroyWindow(cctl->hWndControl);

        HeapFree(ProcessHeap,
                 0,
                 cctl);
        return TRUE;
    }

    return FALSE;
}
