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
typedef  scalar_t__ MSIINSTALLCONTEXT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_BAD_CONFIGURATION ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ ERROR_UNKNOWN_PATCH ; 
 scalar_t__ ERROR_UNKNOWN_PRODUCT ; 
 int MSICODE_PATCH ; 
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ; 
 scalar_t__ MSIINSTALLCONTEXT_USERMANAGED ; 
 scalar_t__ MSIINSTALLCONTEXT_USERUNMANAGED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szSourceList ; 

__attribute__((used)) static UINT FUNC6(LPCWSTR szProduct, HKEY* key, DWORD dwOptions,
                          MSIINSTALLCONTEXT context, BOOL create)
{
    HKEY rootkey = 0; 
    UINT rc = ERROR_FUNCTION_FAILED;

    if (context == MSIINSTALLCONTEXT_USERUNMANAGED)
    {
        if (dwOptions & MSICODE_PATCH)
            rc = FUNC2(szProduct, &rootkey, create);
        else
            rc = FUNC1(szProduct, NULL, context,
                                       &rootkey, create);
    }
    else if (context == MSIINSTALLCONTEXT_USERMANAGED)
    {
        if (dwOptions & MSICODE_PATCH)
            rc = FUNC2(szProduct, &rootkey, create);
        else
            rc = FUNC1(szProduct, NULL, context,
                                       &rootkey, create);
    }
    else if (context == MSIINSTALLCONTEXT_MACHINE)
    {
        if (dwOptions & MSICODE_PATCH)
            rc = FUNC0(szProduct, &rootkey, create);
        else
            rc = FUNC1(szProduct, NULL, context,
                                       &rootkey, create);
    }

    if (rc != ERROR_SUCCESS)
    {
        if (dwOptions & MSICODE_PATCH)
            return ERROR_UNKNOWN_PATCH;
        else
            return ERROR_UNKNOWN_PRODUCT;
    }

    if (create)
        rc = FUNC4(rootkey, szSourceList, key);
    else
    {
        rc = FUNC5(rootkey,szSourceList, key);
        if (rc != ERROR_SUCCESS)
            rc = ERROR_BAD_CONFIGURATION;
    }
    FUNC3(rootkey);

    return rc;
}