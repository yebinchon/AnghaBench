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
typedef  char* LPSTR ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

__attribute__((used)) static MSIHANDLE FUNC7(LPSTR prodcode)
{
    MSIHANDLE hdb = 0;
    CHAR query[MAX_PATH];
    UINT res;

    FUNC0(msifile);

    /* create an empty database */
    res = FUNC2(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC3( res == ERROR_SUCCESS , "Failed to create database\n" );
    if (res != ERROR_SUCCESS)
        return hdb;

    res = FUNC1(hdb);
    FUNC3(res == ERROR_SUCCESS, "Failed to commit database\n");

    FUNC5(hdb, prodcode);

    res = FUNC4(hdb,
            "CREATE TABLE `Directory` ( "
            "`Directory` CHAR(255) NOT NULL, "
            "`Directory_Parent` CHAR(255), "
            "`DefaultDir` CHAR(255) NOT NULL "
            "PRIMARY KEY `Directory`)");
    FUNC3(res == ERROR_SUCCESS , "Failed to create directory table\n");

    res = FUNC4(hdb,
            "CREATE TABLE `Property` ( "
            "`Property` CHAR(72) NOT NULL, "
            "`Value` CHAR(255) "
            "PRIMARY KEY `Property`)");
    FUNC3(res == ERROR_SUCCESS , "Failed to create directory table\n");

    FUNC6(query, "INSERT INTO `Property` "
            "(`Property`, `Value`) "
            "VALUES( 'ProductCode', '%s' )", prodcode);
    res = FUNC4(hdb, query);
    FUNC3(res == ERROR_SUCCESS , "Failed\n");

    res = FUNC1(hdb);
    FUNC3(res == ERROR_SUCCESS, "Failed to commit database\n");

    return hdb;
}