
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int si_extmatch; } ;
typedef TYPE_1__ stateitem_T ;
struct TYPE_5__ {int ga_len; scalar_t__ ga_data; } ;


 TYPE_2__ current_state ;
 int ga_clear (TYPE_2__*) ;
 int unref_extmatch (int ) ;

__attribute__((used)) static void
clear_current_state()
{
    int i;
    stateitem_T *sip;

    sip = (stateitem_T *)(current_state.ga_data);
    for (i = 0; i < current_state.ga_len; i++)
 unref_extmatch(sip[i].si_extmatch);
    ga_clear(&current_state);
}
