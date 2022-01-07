
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int script_state; int * script; int * parse; int * parse_proc; } ;
typedef TYPE_1__ ScriptHost ;


 int IActiveScriptParseProcedure2_Release (int *) ;
 int IActiveScriptParse_Release (int *) ;
 int IActiveScript_Close (int *) ;
 int IActiveScript_Release (int *) ;
 int IActiveScript_SetScriptState (int *,int) ;




 int SCRIPTSTATE_UNINITIALIZED ;

__attribute__((used)) static void release_script_engine(ScriptHost *This)
{
    if(!This->script)
        return;

    switch(This->script_state) {
    case 131:
        IActiveScript_SetScriptState(This->script, 130);

    case 128:
    case 130:
    case 129:
        IActiveScript_Close(This->script);

    default:
        if(This->parse_proc) {
            IActiveScriptParseProcedure2_Release(This->parse_proc);
            This->parse_proc = ((void*)0);
        }

        if(This->parse) {
            IActiveScriptParse_Release(This->parse);
            This->parse = ((void*)0);
        }
    }

    IActiveScript_Release(This->script);
    This->script = ((void*)0);
    This->script_state = SCRIPTSTATE_UNINITIALIZED;
}
