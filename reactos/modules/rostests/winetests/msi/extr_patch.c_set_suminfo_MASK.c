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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_DIRECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  VT_I4 ; 
 int /*<<< orphan*/  VT_LPSTR ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6( const WCHAR *filename )
{
    UINT r;
    MSIHANDLE hsi, hdb;

    r = FUNC2( filename, MSIDBOPEN_DIRECT, &hdb );
    FUNC5( r == ERROR_SUCCESS, "failed to open database %u\n", r );

    r = FUNC1( hdb, NULL, 7, &hsi );
    FUNC5( r == ERROR_SUCCESS, "failed to open summaryinfo %u\n", r );

    r = FUNC4( hsi, 2, VT_LPSTR, 0, NULL, "Installation Database" );
    FUNC5( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = FUNC4( hsi, 3, VT_LPSTR, 0, NULL, "Installation Database" );
    FUNC5( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = FUNC4( hsi, 4, VT_LPSTR, 0, NULL, "WineHQ" );
    FUNC5( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = FUNC4( hsi, 7, VT_LPSTR, 0, NULL, ";1033" );
    FUNC5( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = FUNC4( hsi, 9, VT_LPSTR, 0, NULL, "{E528DDD6-4801-4BEC-BBB6-C5EE0FD097E9}" );
    FUNC5( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = FUNC4( hsi, 14, VT_I4, 100, NULL, NULL );
    FUNC5( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = FUNC4( hsi, 15, VT_I4, 0, NULL, NULL );
    FUNC5( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = FUNC3( hsi );
    FUNC5( r == ERROR_SUCCESS, "failed to persist suminfo %u\n", r );

    r = FUNC0( hsi );
    FUNC5( r == ERROR_SUCCESS, "failed to close suminfo %u\n", r );

    r = FUNC0( hdb );
    FUNC5( r == ERROR_SUCCESS, "failed to close database %u\n", r );
}