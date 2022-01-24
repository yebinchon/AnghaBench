#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int msidbCustomActionTypeAsync ; 
 int msidbCustomActionTypeContinue ; 

__attribute__((used)) static UINT FUNC6(MSIPACKAGE* package, UINT type,
                           HANDLE ProcessHandle, LPCWSTR name)
{
    UINT rc = ERROR_SUCCESS;

    if (!(type & msidbCustomActionTypeAsync))
    {
        FUNC1("waiting for %s\n", FUNC3(name));

        FUNC5(ProcessHandle);

        if (!(type & msidbCustomActionTypeContinue))
            rc = FUNC2(ProcessHandle);

        FUNC0(ProcessHandle);
    }
    else
    {
        FUNC1("%s running in background\n", FUNC3(name));

        if (!(type & msidbCustomActionTypeContinue))
            FUNC4(package, ProcessHandle, TRUE, name);
        else
            FUNC0(ProcessHandle);
    }

    return rc;
}