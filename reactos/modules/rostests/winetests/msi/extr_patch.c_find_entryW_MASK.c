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
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*,char const*) ; 

__attribute__((used)) static UINT FUNC7( MSIHANDLE hdb, const WCHAR *table, const WCHAR *entry )
{
    static const WCHAR fmt[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','`','%','s','`',' ',
         'W','H','E','R','E',' ','`','N','a','m','e','`',' ','=',' ','\'','%','s','\'',0};
    WCHAR query[0x100];
    MSIHANDLE hview, hrec;
    UINT r;

    FUNC6( query, fmt, table, entry );
    r = FUNC1( hdb, query, &hview );
    FUNC5( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = FUNC3( hview, 0 );
    FUNC5( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = FUNC4( hview, &hrec );
    FUNC2( hview );
    FUNC0( hview );
    FUNC0( hrec );
    return r;
}