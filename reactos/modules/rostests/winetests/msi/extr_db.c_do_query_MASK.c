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
typedef  scalar_t__ MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char const*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__*) ; 

__attribute__((used)) static UINT FUNC5(MSIHANDLE hdb, const char *query, MSIHANDLE *phrec)
{
    MSIHANDLE hview = 0;
    UINT r, ret;

    if (phrec)
        *phrec = 0;

    /* open a select query */
    r = FUNC1(hdb, query, &hview);
    if (r != ERROR_SUCCESS)
        return r;
    r = FUNC3(hview, 0);
    if (r != ERROR_SUCCESS)
        return r;
    ret = FUNC4(hview, phrec);
    r = FUNC2(hview);
    if (r != ERROR_SUCCESS)
        return r;
    r = FUNC0(hview);
    if (r != ERROR_SUCCESS)
        return r;
    return ret;
}