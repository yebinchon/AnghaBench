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
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*) ; 

__attribute__((used)) static UINT FUNC7(MSIHANDLE hdb, const char *table, UINT field)
{
    MSIHANDLE hview = 0, rec = 0;
    UINT r, type = 0;
    char query[0x100];

    FUNC6(query, "select * from `_Columns` where  `Table` = '%s'", table );

    r = FUNC1(hdb, query, &hview);
    if( r != ERROR_SUCCESS )
        return r;

    r = FUNC4(hview, 0);
    if( r == ERROR_SUCCESS )
    {
        while (1)
        {
            r = FUNC5( hview, &rec );
            if( r != ERROR_SUCCESS)
                break;
            r = FUNC2( rec, 2 );
            if (r == field)
                type = FUNC2( rec, 4 );
            FUNC0( rec );
        }
    }
    FUNC3(hview);
    FUNC0(hview);
    return type;
}