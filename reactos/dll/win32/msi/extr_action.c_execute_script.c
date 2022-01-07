
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t* script_actions_count; int ** script_actions; } ;
typedef TYPE_1__ MSIPACKAGE ;


 size_t ACTION_PerformAction (TYPE_1__*,int ,size_t) ;
 int ERR (char*,size_t,int ,size_t) ;
 size_t ERROR_SUCCESS ;
 size_t SCRIPT_ROLLBACK ;
 int TRACE (char*,size_t) ;
 int debugstr_w (int ) ;
 int msi_free_action_script (TYPE_1__*,size_t) ;

__attribute__((used)) static UINT execute_script( MSIPACKAGE *package, UINT script )
{
    UINT i, rc = ERROR_SUCCESS;

    TRACE("executing script %u\n", script);

    if (script == SCRIPT_ROLLBACK)
    {
        for (i = package->script_actions_count[script]; i > 0; i--)
        {
            rc = ACTION_PerformAction(package, package->script_actions[script][i-1], script);
            if (rc != ERROR_SUCCESS)
            {
                ERR("Execution of script %i halted; action %s returned %u\n",
                    script, debugstr_w(package->script_actions[script][i-1]), rc);
                break;
            }
        }
    }
    else
    {
        for (i = 0; i < package->script_actions_count[script]; i++)
        {
            rc = ACTION_PerformAction(package, package->script_actions[script][i], script);
            if (rc != ERROR_SUCCESS)
            {
                ERR("Execution of script %i halted; action %s returned %u\n",
                    script, debugstr_w(package->script_actions[script][i]), rc);
                break;
            }
        }
    }
    msi_free_action_script(package, script);
    return rc;
}
