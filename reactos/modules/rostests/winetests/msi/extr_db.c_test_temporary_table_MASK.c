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
typedef  int MSIHANDLE ;
typedef  scalar_t__ MSICONDITION ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_BAD_QUERY_SYNTAX ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICOLINFO_TYPES ; 
 scalar_t__ MSICONDITION_ERROR ; 
 scalar_t__ MSICONDITION_FALSE ; 
 scalar_t__ MSICONDITION_NONE ; 
 scalar_t__ MSICONDITION_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int,char const*,int*) ; 
 scalar_t__ FUNC4 (int,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int,char*,int*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    MSICONDITION cond;
    MSIHANDLE hdb = 0, view = 0, rec;
    const char *query;
    UINT r;
    char buf[0x10];
    DWORD sz;

    cond = FUNC2(0, NULL);
    FUNC9( cond == MSICONDITION_ERROR, "wrong return condition\n");

    hdb = FUNC7();
    FUNC9( hdb, "failed to create db\n");

    cond = FUNC2(hdb, NULL);
    FUNC9( cond == MSICONDITION_ERROR, "wrong return condition\n");

    cond = FUNC2(hdb, "_Tables");
    FUNC9( cond == MSICONDITION_NONE, "wrong return condition\n");

    cond = FUNC2(hdb, "_Columns");
    FUNC9( cond == MSICONDITION_NONE, "wrong return condition\n");

    cond = FUNC2(hdb, "_Storages");
    FUNC9( cond == MSICONDITION_NONE, "wrong return condition\n");

    cond = FUNC2(hdb, "_Streams");
    FUNC9( cond == MSICONDITION_NONE, "wrong return condition\n");

    query = "CREATE TABLE `P` ( `B` SHORT NOT NULL, `C` CHAR(255) PRIMARY KEY `C`)";
    r = FUNC10(hdb, 0, query);
    FUNC9(r == ERROR_SUCCESS, "failed to add table\n");

    cond = FUNC2(hdb, "P");
    FUNC9( cond == MSICONDITION_TRUE, "wrong return condition\n");

    query = "CREATE TABLE `P2` ( `B` SHORT NOT NULL, `C` CHAR(255) PRIMARY KEY `C`) HOLD";
    r = FUNC10(hdb, 0, query);
    FUNC9(r == ERROR_SUCCESS, "failed to add table\n");

    cond = FUNC2(hdb, "P2");
    FUNC9( cond == MSICONDITION_TRUE, "wrong return condition\n");

    query = "CREATE TABLE `T` ( `B` SHORT NOT NULL TEMPORARY, `C` CHAR(255) TEMPORARY PRIMARY KEY `C`) HOLD";
    r = FUNC10(hdb, 0, query);
    FUNC9(r == ERROR_SUCCESS, "failed to add table\n");

    cond = FUNC2(hdb, "T");
    FUNC9( cond == MSICONDITION_FALSE, "wrong return condition\n");

    query = "CREATE TABLE `T2` ( `B` SHORT NOT NULL TEMPORARY, `C` CHAR(255) TEMPORARY PRIMARY KEY `C`)";
    r = FUNC10(hdb, 0, query);
    FUNC9(r == ERROR_SUCCESS, "failed to add table\n");

    query = "SELECT * FROM `T2`";
    r = FUNC3(hdb, query, &view);
    FUNC9(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    cond = FUNC2(hdb, "T2");
    FUNC9( cond == MSICONDITION_NONE, "wrong return condition\n");

    query = "CREATE TABLE `T3` ( `B` SHORT NOT NULL TEMPORARY, `C` CHAR(255) PRIMARY KEY `C`)";
    r = FUNC10(hdb, 0, query);
    FUNC9(r == ERROR_SUCCESS, "failed to add table\n");

    cond = FUNC2(hdb, "T3");
    FUNC9( cond == MSICONDITION_TRUE, "wrong return condition\n");

    query = "CREATE TABLE `T4` ( `B` SHORT NOT NULL, `C` CHAR(255) TEMPORARY PRIMARY KEY `C`)";
    r = FUNC10(hdb, 0, query);
    FUNC9(r == ERROR_FUNCTION_FAILED, "failed to add table\n");

    cond = FUNC2(hdb, "T4");
    FUNC9( cond == MSICONDITION_NONE, "wrong return condition\n");

    query = "CREATE TABLE `T5` ( `B` SHORT NOT NULL TEMP, `C` CHAR(255) TEMP PRIMARY KEY `C`) HOLD";
    r = FUNC10(hdb, 0, query);
    FUNC9(r == ERROR_BAD_QUERY_SYNTAX, "failed to add table\n");

    query = "select * from `T`";
    r = FUNC3(hdb, query, &view);
    FUNC9(r == ERROR_SUCCESS, "failed to query table\n");
    r = FUNC6(view, MSICOLINFO_TYPES, &rec);
    FUNC9(r == ERROR_SUCCESS, "failed to get column info\n");

    sz = sizeof buf;
    r = FUNC4(rec, 1, buf, &sz);
    FUNC9(r == ERROR_SUCCESS, "failed to get string\n");
    FUNC9( 0 == FUNC11("G255", buf), "wrong column type\n");

    sz = sizeof buf;
    r = FUNC4(rec, 2, buf, &sz);
    FUNC9(r == ERROR_SUCCESS, "failed to get string\n");
    FUNC9( 0 == FUNC11("j2", buf), "wrong column type\n");

    FUNC1( rec );
    FUNC5( view );
    FUNC1( view );

    /* query the table data */
    rec = 0;
    r = FUNC8(hdb, "select * from `_Tables` where `Name` = 'T'", &rec);
    FUNC9( r == ERROR_SUCCESS, "temporary table exists in _Tables\n");
    FUNC1( rec );

    /* query the column data */
    rec = 0;
    r = FUNC8(hdb, "select * from `_Columns` where `Table` = 'T' AND `Name` = 'B'", &rec);
    FUNC9( r == ERROR_NO_MORE_ITEMS, "temporary table exists in _Columns\n");
    if (rec) FUNC1( rec );

    r = FUNC8(hdb, "select * from `_Columns` where `Table` = 'T' AND `Name` = 'C'", &rec);
    FUNC9( r == ERROR_NO_MORE_ITEMS, "temporary table exists in _Columns\n");
    if (rec) FUNC1( rec );

    FUNC1( hdb );
    FUNC0(msifile);
}