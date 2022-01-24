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
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static UINT FUNC5( MSIHANDLE hdb, LPCSTR szQuery, MSIHANDLE hrec )
{
    MSIHANDLE htab = 0;
    UINT res;

    res = FUNC1( hdb, szQuery, &htab );
    if( res == ERROR_SUCCESS )
    {
        UINT r;

        r = FUNC3( htab, hrec );
        if( r != ERROR_SUCCESS )
        {
            res = r;
            FUNC4(stderr,"MsiViewExecute failed %08lx\n", res);
        }

        r = FUNC2( htab );
        if( r != ERROR_SUCCESS )
            res = r;

        r = FUNC0( htab );
        if( r != ERROR_SUCCESS )
            res = r;
    }
    return res;
}