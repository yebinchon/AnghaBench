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
typedef  scalar_t__ MSIHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int /*<<< orphan*/  MSIMODIFY_ASSIGN ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__,char const*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (scalar_t__,int) ; 
 int FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,scalar_t__*) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC13(void)
{
    MSIHANDLE hdb = 0, hview = 0, hrec = 0;
    const char *query;
    UINT r;

    /* setup database */
    FUNC0(msifile);

    r = FUNC4(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC11(r == ERROR_SUCCESS, "MsiOpenDatabase failed\n");

    query = "CREATE TABLE `table` (`A` INT, `B` INT PRIMARY KEY `A`)";
    r = FUNC12( hdb, 0, query );
    FUNC11(r == ERROR_SUCCESS, "query failed\n");

    /* assign to view, new primary key */
    query = "SELECT * FROM `table`";
    r = FUNC3(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC8(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "MsiViewExecute failed\n");

    hrec = FUNC2(2);
    FUNC11(hrec != 0, "MsiCreateRecord failed\n");

    r = FUNC6(hrec, 1, 1);
    FUNC11(r == ERROR_SUCCESS, "failed to set integer\n");
    r = FUNC6(hrec, 2, 2);
    FUNC11(r == ERROR_SUCCESS, "failed to set integer\n");

    r = FUNC10(hview, MSIMODIFY_ASSIGN, hrec);
    FUNC11(r == ERROR_SUCCESS, "MsiViewModify failed: %d\n", r);

    r = FUNC1(hrec);
    FUNC11(r == ERROR_SUCCESS, "failed to close record\n");

    r = FUNC7(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    query = "SELECT * FROM `table`";
    r = FUNC3(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC8(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC9(hview, &hrec);
    FUNC11(r == ERROR_SUCCESS, "MsiViewFetch failed\n");

    r = FUNC5(hrec, 1);
    FUNC11(r == 1, "Expected 1, got %d\n", r);
    r = FUNC5(hrec, 2);
    FUNC11(r == 2, "Expected 2, got %d\n", r);

    r = FUNC1(hrec);
    FUNC11(r == ERROR_SUCCESS, "failed to close record\n");

    r = FUNC9(hview, &hrec);
    FUNC11(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    r = FUNC7(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    /* assign to view, primary key matches */
    query = "SELECT * FROM `table`";
    r = FUNC3(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC8(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "MsiViewExecute failed\n");

    hrec = FUNC2(2);
    FUNC11(hrec != 0, "MsiCreateRecord failed\n");

    r = FUNC6(hrec, 1, 1);
    FUNC11(r == ERROR_SUCCESS, "failed to set integer\n");
    r = FUNC6(hrec, 2, 4);
    FUNC11(r == ERROR_SUCCESS, "failed to set integer\n");

    r = FUNC10(hview, MSIMODIFY_ASSIGN, hrec);
    FUNC11(r == ERROR_SUCCESS, "MsiViewModify failed: %d\n", r);

    r = FUNC1(hrec);
    FUNC11(r == ERROR_SUCCESS, "failed to close record\n");

    r = FUNC7(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    query = "SELECT * FROM `table`";
    r = FUNC3(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC8(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC9(hview, &hrec);
    FUNC11(r == ERROR_SUCCESS, "MsiViewFetch failed\n");

    r = FUNC5(hrec, 1);
    FUNC11(r == 1, "Expected 1, got %d\n", r);
    r = FUNC5(hrec, 2);
    FUNC11(r == 4, "Expected 4, got %d\n", r);

    r = FUNC1(hrec);
    FUNC11(r == ERROR_SUCCESS, "failed to close record\n");

    r = FUNC9(hview, &hrec);
    FUNC11(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    r = FUNC7(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC11(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    /* close database */
    r = FUNC1( hdb );
    FUNC11(r == ERROR_SUCCESS, "MsiOpenDatabase close failed\n");
}