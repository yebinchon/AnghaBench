#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; int /*<<< orphan*/  action; int /*<<< orphan*/  handle; int /*<<< orphan*/  package; } ;
typedef  TYPE_1__ msi_custom_action_info ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int msidbCustomActionTypeAsync ; 
 int msidbCustomActionTypeContinue ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC5( msi_custom_action_info *info )
{
    UINT rc = ERROR_SUCCESS;

    if (!(info->type & msidbCustomActionTypeAsync))
    {
        FUNC0("waiting for %s\n", FUNC2( info->action ));

        FUNC3( info->handle );

        if (!(info->type & msidbCustomActionTypeContinue))
            rc = FUNC1( info->package, info->handle );

        FUNC4( info );
    }
    else
    {
        FUNC0("%s running in background\n", FUNC2( info->action ));
    }

    return rc;
}