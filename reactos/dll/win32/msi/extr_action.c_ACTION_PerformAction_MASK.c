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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ action_progress_increment; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ ERROR_FUNCTION_NOT_CALLED ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 

UINT FUNC5(MSIPACKAGE *package, const WCHAR *action, UINT script)
{
    UINT rc;

    FUNC2("Performing action (%s)\n", FUNC4(action));

    package->action_progress_increment = 0;
    rc = FUNC1(package, action);

    if (rc == ERROR_FUNCTION_NOT_CALLED)
        rc = FUNC0(package, action, script);

    if (rc == ERROR_FUNCTION_NOT_CALLED)
        FUNC3("unhandled msi action %s\n", FUNC4(action));

    return rc;
}