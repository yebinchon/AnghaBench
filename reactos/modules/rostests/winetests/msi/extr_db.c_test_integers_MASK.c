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
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICOLINFO_NAMES ; 
 int /*<<< orphan*/  MSICOLINFO_TYPES ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int MSI_NULL_INTEGER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    MSIHANDLE hdb = 0, view = 0, rec = 0;
    DWORD count, i;
    const char *query;
    UINT r;

    /* just MsiOpenDatabase should not create a file */
    r = FUNC4(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC12(r == ERROR_SUCCESS, "MsiOpenDatabase failed\n");

    /* create a table */
    query = "CREATE TABLE `integers` ( "
            "`one` SHORT, `two` INT, `three` INTEGER, `four` LONG, "
            "`five` SHORT NOT NULL, `six` INT NOT NULL, "
            "`seven` INTEGER NOT NULL, `eight` LONG NOT NULL "
            "PRIMARY KEY `one`)";
    r = FUNC3(hdb, query, &view);
    FUNC12(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC8(view, 0);
    FUNC12(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC7(view);
    FUNC12(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(view);
    FUNC12(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    query = "SELECT * FROM `integers`";
    r = FUNC3(hdb, query, &view);
    FUNC12(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC9(view, MSICOLINFO_NAMES, &rec);
    FUNC12(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    count = FUNC5(rec);
    FUNC12(count == 8, "Expected 8, got %d\n", count);
    FUNC12(FUNC10(rec, 1, "one"), "Expected one\n");
    FUNC12(FUNC10(rec, 2, "two"), "Expected two\n");
    FUNC12(FUNC10(rec, 3, "three"), "Expected three\n");
    FUNC12(FUNC10(rec, 4, "four"), "Expected four\n");
    FUNC12(FUNC10(rec, 5, "five"), "Expected five\n");
    FUNC12(FUNC10(rec, 6, "six"), "Expected six\n");
    FUNC12(FUNC10(rec, 7, "seven"), "Expected seven\n");
    FUNC12(FUNC10(rec, 8, "eight"), "Expected eight\n");
    FUNC1(rec);

    r = FUNC9(view, MSICOLINFO_TYPES, &rec);
    FUNC12(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    count = FUNC5(rec);
    FUNC12(count == 8, "Expected 8, got %d\n", count);
    FUNC12(FUNC10(rec, 1, "I2"), "Expected I2\n");
    FUNC12(FUNC10(rec, 2, "I2"), "Expected I2\n");
    FUNC12(FUNC10(rec, 3, "I2"), "Expected I2\n");
    FUNC12(FUNC10(rec, 4, "I4"), "Expected I4\n");
    FUNC12(FUNC10(rec, 5, "i2"), "Expected i2\n");
    FUNC12(FUNC10(rec, 6, "i2"), "Expected i2\n");
    FUNC12(FUNC10(rec, 7, "i2"), "Expected i2\n");
    FUNC12(FUNC10(rec, 8, "i4"), "Expected i4\n");
    FUNC1(rec);

    FUNC7(view);
    FUNC1(view);

    /* insert values into it, NULL where NOT NULL is specified */
    query = "INSERT INTO `integers` ( `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight` )"
        "VALUES('', '', '', '', '', '', '', '')";
    r = FUNC3(hdb, query, &view);
    FUNC12(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC8(view, 0);
    FUNC12(r == ERROR_FUNCTION_FAILED, "Expected ERROR_FUNCTION_FAILED, got %d\n", r);

    FUNC7(view);
    FUNC1(view);

    query = "SELECT * FROM `integers`";
    r = FUNC11(hdb, query, &rec);
    FUNC12(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    r = FUNC5(rec);
    FUNC12(r == -1, "record count wrong: %d\n", r);

    FUNC1(rec);

    /* insert legitimate values into it */
    query = "INSERT INTO `integers` ( `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight` )"
        "VALUES('', '2', '', '4', '5', '6', '7', '8')";
    r = FUNC3(hdb, query, &view);
    FUNC12(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC8(view, 0);
    FUNC12(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "SELECT * FROM `integers`";
    r = FUNC11(hdb, query, &rec);
    FUNC12(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC5(rec);
    FUNC12(r == 8, "record count wrong: %d\n", r);

    i = FUNC6(rec, 1);
    FUNC12(i == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", i);
    i = FUNC6(rec, 3);
    FUNC12(i == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", i);
    i = FUNC6(rec, 2);
    FUNC12(i == 2, "Expected 2, got %d\n", i);
    i = FUNC6(rec, 4);
    FUNC12(i == 4, "Expected 4, got %d\n", i);
    i = FUNC6(rec, 5);
    FUNC12(i == 5, "Expected 5, got %d\n", i);
    i = FUNC6(rec, 6);
    FUNC12(i == 6, "Expected 6, got %d\n", i);
    i = FUNC6(rec, 7);
    FUNC12(i == 7, "Expected 7, got %d\n", i);
    i = FUNC6(rec, 8);
    FUNC12(i == 8, "Expected 8, got %d\n", i);

    FUNC1(rec);
    FUNC7(view);
    FUNC1(view);

    r = FUNC2(hdb);
    FUNC12(r == ERROR_SUCCESS, "MsiDatabaseCommit failed\n");

    r = FUNC1(hdb);
    FUNC12(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    r = FUNC0(msifile);
    FUNC12(r == TRUE, "file didn't exist after commit\n");
}