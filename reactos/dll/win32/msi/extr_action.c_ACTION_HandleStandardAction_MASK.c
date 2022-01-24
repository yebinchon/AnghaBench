#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_9__ {scalar_t__ description; scalar_t__ template; size_t (* handler ) (TYPE_1__*) ;scalar_t__ action_rollback; int /*<<< orphan*/ * action; } ;
struct TYPE_8__ {int /*<<< orphan*/  need_rollback; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 size_t ERROR_FUNCTION_NOT_CALLED ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SCRIPT_ROLLBACK ; 
 TYPE_6__* StandardActions ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_hInstance ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC9(MSIPACKAGE *package, LPCWSTR action)
{
    UINT rc = ERROR_FUNCTION_NOT_CALLED;
    UINT i;

    i = 0;
    while (StandardActions[i].action != NULL)
    {
        if (!FUNC5( StandardActions[i].action, action ))
        {
            WCHAR description[100] = {0}, template[100] = {0};

            if (StandardActions[i].description != 0)
                FUNC1(msi_hInstance, StandardActions[i].description, (LPWSTR)&description, 100);
            if (StandardActions[i].template != 0)
                FUNC1(msi_hInstance, StandardActions[i].template, (LPWSTR)&template, 100);

            FUNC8(package, action, description, template);
            if (StandardActions[i].handler)
            {
                FUNC7( package, action, TRUE, 0 );
                rc = StandardActions[i].handler( package );
                FUNC7( package, action, FALSE, !rc );

                if (StandardActions[i].action_rollback && !package->need_rollback)
                {
                    FUNC2("scheduling rollback action\n");
                    FUNC4( package, SCRIPT_ROLLBACK, StandardActions[i].action_rollback );
                }
            }
            else
            {
                FUNC0("unhandled standard action %s\n", FUNC3(action));
                rc = ERROR_SUCCESS;
            }
            break;
        }
        i++;
    }
    return rc;
}