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
typedef  int INT ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static INT FUNC7( MSIHANDLE hdb, UINT field, const char *query)
{
    UINT r;
    INT ret = -1;
    MSIHANDLE hview, hrec;

    r = FUNC1( hdb, query, &hview );
    FUNC6( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = FUNC4( hview, 0 );
    FUNC6( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = FUNC5( hview, &hrec );
    FUNC6( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );
    if (r == ERROR_SUCCESS)
    {
        UINT r_tmp;
        ret = FUNC2( hrec, field );
        FUNC0( hrec );

        r_tmp = FUNC5( hview, &hrec );
        FUNC6( r_tmp == ERROR_NO_MORE_ITEMS, "expected ERROR_NO_MORE_ITEMS, got %u\n", r);
    }

    FUNC3( hview );
    FUNC0( hview );
    return ret;
}