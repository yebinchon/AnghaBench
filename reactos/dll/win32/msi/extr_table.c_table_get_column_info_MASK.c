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
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  int /*<<< orphan*/  MSICOLUMNINFO ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC5( MSIDATABASE *db, LPCWSTR name, MSICOLUMNINFO **pcols, UINT *pcount )
{
    UINT r, column_count = 0;
    MSICOLUMNINFO *columns;

    /* get the number of columns in this table */
    column_count = 0;
    r = FUNC2( db, name, NULL, &column_count );
    if (r != ERROR_SUCCESS)
        return r;

    *pcount = column_count;

    /* if there are no columns, there's no table */
    if (!column_count)
        return ERROR_INVALID_PARAMETER;

    FUNC0("table %s found\n", FUNC1(name));

    columns = FUNC3( column_count * sizeof(MSICOLUMNINFO) );
    if (!columns)
        return ERROR_FUNCTION_FAILED;

    r = FUNC2( db, name, columns, &column_count );
    if (r != ERROR_SUCCESS)
    {
        FUNC4( columns );
        return ERROR_FUNCTION_FAILED;
    }
    *pcols = columns;
    return r;
}