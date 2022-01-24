#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_5__ {size_t* script_actions_count; int /*<<< orphan*/ ** script_actions; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ,size_t) ; 
 size_t ERROR_SUCCESS ; 
 size_t SCRIPT_ROLLBACK ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 

__attribute__((used)) static UINT FUNC5( MSIPACKAGE *package, UINT script )
{
    UINT i, rc = ERROR_SUCCESS;

    FUNC2("executing script %u\n", script);

    if (script == SCRIPT_ROLLBACK)
    {
        for (i = package->script_actions_count[script]; i > 0; i--)
        {
            rc = FUNC0(package, package->script_actions[script][i-1], script);
            if (rc != ERROR_SUCCESS)
            {
                FUNC1("Execution of script %i halted; action %s returned %u\n",
                    script, FUNC3(package->script_actions[script][i-1]), rc);
                break;
            }
        }
    }
    else
    {
        for (i = 0; i < package->script_actions_count[script]; i++)
        {
            rc = FUNC0(package, package->script_actions[script][i], script);
            if (rc != ERROR_SUCCESS)
            {
                FUNC1("Execution of script %i halted; action %s returned %u\n",
                    script, FUNC3(package->script_actions[script][i]), rc);
                break;
            }
        }
    }
    FUNC4(package, script);
    return rc;
}