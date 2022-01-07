
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ UIState; int self; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ LB_DESCR ;
typedef int BOOL ;


 scalar_t__ DefWindowProcW (int ,int ,int ,int ) ;
 int WM_QUERYUISTATE ;

__attribute__((used)) static BOOL LISTBOX_update_uistate(LB_DESCR *descr)
{
    LONG prev_flags;

    prev_flags = descr->UIState;
    descr->UIState = DefWindowProcW(descr->self, WM_QUERYUISTATE, 0, 0);
    return prev_flags != descr->UIState;
}
