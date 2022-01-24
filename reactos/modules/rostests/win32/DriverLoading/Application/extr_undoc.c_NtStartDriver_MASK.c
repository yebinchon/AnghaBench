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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

BOOL
FUNC7(LPCWSTR lpService)
{
    WCHAR szDriverPath[MAX_PATH];
    UNICODE_STRING DriverPath;
    NTSTATUS Status = -1;

    FUNC5(szDriverPath,
           L"\\Registry\\Machine\\System\\CurrentControlSet\\Services\\");
    FUNC4(szDriverPath,
           lpService);

    FUNC1(&DriverPath,
                         szDriverPath);

    if (FUNC3(TRUE))
    {
        Status = FUNC0(&DriverPath);
        if (Status != STATUS_SUCCESS)
        {
            DWORD err = FUNC2(Status);
            FUNC6(L"NtUnloadDriver failed [%lu]\n", err);
        }

        FUNC3(FALSE);
    }

    return (Status == STATUS_SUCCESS);
}