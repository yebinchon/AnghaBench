
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ site; } ;
typedef TYPE_1__ VBScript ;
typedef scalar_t__ SCRIPTSTATE ;


 int IActiveScriptSite_OnStateChange (scalar_t__,scalar_t__) ;

__attribute__((used)) static void change_state(VBScript *This, SCRIPTSTATE state)
{
    if(This->state == state)
        return;

    This->state = state;
    if(This->site)
        IActiveScriptSite_OnStateChange(This->site, state);
}
