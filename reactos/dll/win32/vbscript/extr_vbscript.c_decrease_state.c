
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int thread_id; int ctx; int * site; } ;
typedef TYPE_1__ VBScript ;
typedef int SCRIPTSTATE ;


 int DEFAULT_UNREACHABLE ;
 int IActiveScriptSite_Release (int *) ;






 int change_state (TYPE_1__*,int) ;
 int release_script (int ) ;

__attribute__((used)) static void decrease_state(VBScript *This, SCRIPTSTATE state)
{
    switch(This->state) {
    case 132:
        change_state(This, 131);
        if(state == 131)
            return;

    case 129:
    case 131:
        if(This->state == 131)
            change_state(This, 130);
        if(state == 130)
            break;

    case 130:
    case 128:
        change_state(This, state);

        if(This->site) {
            IActiveScriptSite_Release(This->site);
            This->site = ((void*)0);
        }

        if(This->ctx)
            release_script(This->ctx);

        This->thread_id = 0;
        break;
    case 133:
        break;
    DEFAULT_UNREACHABLE;
    }
}
