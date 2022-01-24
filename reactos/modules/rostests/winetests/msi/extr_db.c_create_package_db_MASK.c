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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSIHANDLE FUNC6(const WCHAR *filename)
{
    MSIHANDLE hdb = 0;
    UINT res;

    FUNC0(msifileW);

    /* create an empty database */
    res = FUNC2(filename, MSIDBOPEN_CREATE, &hdb );
    FUNC4( res == ERROR_SUCCESS , "Failed to create database\n" );
    if( res != ERROR_SUCCESS )
        return hdb;

    res = FUNC1( hdb );
    FUNC4( res == ERROR_SUCCESS , "Failed to commit database\n" );

    res = FUNC5(hdb);
    FUNC4( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    FUNC3(hdb);

    return hdb;
}