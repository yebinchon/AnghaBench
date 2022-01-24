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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSIHANDLE FUNC6(void)
{
    MSIHANDLE hdb = 0;
    UINT res;

    FUNC0(msifile);

    /* create an empty database */
    res = FUNC2(msifileW, MSIDBOPEN_CREATE, &hdb );
    FUNC3( res == ERROR_SUCCESS , "Failed to create database %u\n", res );
    if( res != ERROR_SUCCESS )
        return hdb;

    res = FUNC1( hdb );
    FUNC3( res == ERROR_SUCCESS , "Failed to commit database\n" );

    res = FUNC5(hdb);
    FUNC3( res == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", res);

    res = FUNC4( hdb,
            "CREATE TABLE `Directory` ( "
            "`Directory` CHAR(255) NOT NULL, "
            "`Directory_Parent` CHAR(255), "
            "`DefaultDir` CHAR(255) NOT NULL "
            "PRIMARY KEY `Directory`)" );
    FUNC3( res == ERROR_SUCCESS , "Failed to create directory table\n" );

    return hdb;
}