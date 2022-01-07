
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int self; int focus_item; } ;
typedef int LRESULT ;
typedef TYPE_1__ LB_DESCR ;


 int KillSystemTimer (int ,int ) ;
 int LB_TIMER_ID ;
 int LB_TIMER_NONE ;
 int LISTBOX_HandleTimer (TYPE_1__*,int ,int ) ;
 int LISTBOX_Timer ;

__attribute__((used)) static LRESULT LISTBOX_HandleSystemTimer( LB_DESCR *descr )
{
    if (!LISTBOX_HandleTimer( descr, descr->focus_item, LISTBOX_Timer ))
    {
        KillSystemTimer( descr->self, LB_TIMER_ID );
        LISTBOX_Timer = LB_TIMER_NONE;
    }
    return 0;
}
