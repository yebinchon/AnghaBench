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
typedef  int UINT ;
typedef  int MSIHANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_BAD_QUERY_SYNTAX ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 int FALSE ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,char const*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int,int,char*,int*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int,int) ; 
 int FUNC11 (int,int,char*) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int,int) ; 
 int FUNC14 (int,int*) ; 
 int TRUE ; 
 int FUNC15 (int,char const*,int*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

__attribute__((used)) static void FUNC18(void)
{
    MSIHANDLE hdb = 0, hview = 0, hview2 = 0, hrec = 0;
    UINT r;
    const char *query;
    char buf[80];
    DWORD sz;

    FUNC0(msifile);

    /* just MsiOpenDatabase should not create a file */
    r = FUNC5(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC16(r == ERROR_SUCCESS, "MsiOpenDatabase failed\n");

    /* create a table */
    query = "CREATE TABLE `phone` ( "
            "`id` INT, `name` CHAR(32), `number` CHAR(32) "
            "PRIMARY KEY `id`)";
    r = FUNC4(hdb, query, &hview);
    FUNC16(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC13(hview, 0);
    FUNC16(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC12(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    query = "SELECT * FROM phone WHERE number = '8675309'";
    r = FUNC4(hdb, query, &hview2);
    FUNC16(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC13(hview2, 0);
    FUNC16(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC14(hview2, &hrec);
    FUNC16(r == ERROR_NO_MORE_ITEMS, "MsiViewFetch produced items\n");

    /* insert a value into it */
    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES('1', 'Abe', '8675309')";
    r = FUNC4(hdb, query, &hview);
    FUNC16(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC13(hview, 0);
    FUNC16(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC12(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    r = FUNC14(hview2, &hrec);
    FUNC16(r == ERROR_NO_MORE_ITEMS, "MsiViewFetch produced items\n");
    r = FUNC13(hview2, 0);
    FUNC16(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC14(hview2, &hrec);
    FUNC16(r == ERROR_SUCCESS, "MsiViewFetch failed: %u\n", r);

    r = FUNC1(hrec);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");
    r = FUNC12(hview2);
    FUNC16(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview2);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    query = "SELECT * FROM `phone` WHERE `id` = 1";
    r = FUNC15(hdb, query, &hrec);
    FUNC16(r == ERROR_SUCCESS, "MsiViewFetch failed\n");

    /* check the record contains what we put in it */
    r = FUNC6(hrec);
    FUNC16(r == 3, "record count wrong\n");

    r = FUNC9(hrec, 0);
    FUNC16(r == FALSE, "field 0 not null\n");

    r = FUNC7(hrec, 1);
    FUNC16(r == 1, "field 1 contents wrong\n");
    sz = sizeof buf;
    r = FUNC8(hrec, 2, buf, &sz);
    FUNC16(r == ERROR_SUCCESS, "field 2 content fetch failed\n");
    FUNC16(!FUNC17(buf,"Abe"), "field 2 content incorrect\n");
    sz = sizeof buf;
    r = FUNC8(hrec, 3, buf, &sz);
    FUNC16(r == ERROR_SUCCESS, "field 3 content fetch failed\n");
    FUNC16(!FUNC17(buf,"8675309"), "field 3 content incorrect\n");

    r = FUNC1(hrec);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    /* open a select query */
    hrec = 100;
    query = "SELECT * FROM `phone` WHERE `id` >= 10";
    r = FUNC15(hdb, query, &hrec);
    FUNC16(r == ERROR_NO_MORE_ITEMS, "MsiViewFetch failed\n");
    FUNC16(hrec == 0, "hrec should be null\n");

    r = FUNC1(hrec);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    query = "SELECT * FROM `phone` WHERE `id` < 0";
    r = FUNC15(hdb, query, &hrec);
    FUNC16(r == ERROR_NO_MORE_ITEMS, "MsiViewFetch failed\n");

    query = "SELECT * FROM `phone` WHERE `id` <= 0";
    r = FUNC15(hdb, query, &hrec);
    FUNC16(r == ERROR_NO_MORE_ITEMS, "MsiViewFetch failed\n");

    query = "SELECT * FROM `phone` WHERE `id` <> 1";
    r = FUNC15(hdb, query, &hrec);
    FUNC16(r == ERROR_NO_MORE_ITEMS, "MsiViewFetch failed\n");

    query = "SELECT * FROM `phone` WHERE `id` > 10";
    r = FUNC15(hdb, query, &hrec);
    FUNC16(r == ERROR_NO_MORE_ITEMS, "MsiViewFetch failed\n");

    /* now try a few bad INSERT xqueries */
    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES(?, ?)";
    r = FUNC4(hdb, query, &hview);
    FUNC16(r == ERROR_BAD_QUERY_SYNTAX, "MsiDatabaseOpenView failed\n");

    /* construct a record to insert */
    hrec = FUNC2(4);
    r = FUNC10(hrec, 1, 2);
    FUNC16(r == ERROR_SUCCESS, "MsiRecordSetInteger failed\n");
    r = FUNC11(hrec, 2, "Adam");
    FUNC16(r == ERROR_SUCCESS, "MsiRecordSetString failed\n");
    r = FUNC11(hrec, 3, "96905305");
    FUNC16(r == ERROR_SUCCESS, "MsiRecordSetString failed\n");

    /* insert another value, using a record and wildcards */
    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES(?, ?, ?)";
    r = FUNC4(hdb, query, &hview);
    FUNC16(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");

    if (r == ERROR_SUCCESS)
    {
        r = FUNC13(hview, hrec);
        FUNC16(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
        r = FUNC12(hview);
        FUNC16(r == ERROR_SUCCESS, "MsiViewClose failed\n");
        r = FUNC1(hview);
        FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");
    }
    r = FUNC1(hrec);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    r = FUNC14(0, NULL);
    FUNC16(r == ERROR_INVALID_PARAMETER, "MsiViewFetch failed\n");

    r = FUNC3(hdb);
    FUNC16(r == ERROR_SUCCESS, "MsiDatabaseCommit failed\n");

    r = FUNC1(hdb);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    r = FUNC0(msifile);
    FUNC16(r == TRUE, "file didn't exist after commit\n");
}