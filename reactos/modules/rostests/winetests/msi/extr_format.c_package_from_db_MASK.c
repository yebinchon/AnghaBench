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
typedef  int MSIHANDLE ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static UINT FUNC3(MSIHANDLE hdb, MSIHANDLE *handle)
{
    UINT res;
    CHAR szPackage[12];
    MSIHANDLE hPackage;

    FUNC2(szPackage, "#%u", hdb);
    res = FUNC1(szPackage, &hPackage);
    if (res != ERROR_SUCCESS)
        return res;

    res = FUNC0(hdb);
    if (res != ERROR_SUCCESS)
    {
        FUNC0(hPackage);
        return res;
    }

    *handle = hPackage;
    return ERROR_SUCCESS;
}