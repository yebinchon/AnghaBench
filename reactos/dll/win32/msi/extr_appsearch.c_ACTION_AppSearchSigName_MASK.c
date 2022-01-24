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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSISIGNATURE ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 

__attribute__((used)) static UINT FUNC5(MSIPACKAGE *package, LPCWSTR sigName,
 MSISIGNATURE *sig, LPWSTR *appValue)
{
    UINT rc;

    *appValue = NULL;
    rc = FUNC2(package, sig, sigName);
    if (rc == ERROR_SUCCESS)
    {
        rc = FUNC0(package, appValue, sig);
        if (rc == ERROR_SUCCESS && !*appValue)
        {
            rc = FUNC4(package, appValue, sig);
            if (rc == ERROR_SUCCESS && !*appValue)
            {
                rc = FUNC3(package, appValue, sig);
                if (rc == ERROR_SUCCESS && !*appValue)
                    rc = FUNC1(package, appValue, sig);
            }
        }
    }
    return rc;
}