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
typedef  char* LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    MSIHANDLE hdb = 0, rec, view;
    LPCSTR query;
    UINT r;

    hdb = FUNC7();
    FUNC8( hdb, "failed to create db\n");

    r = FUNC9(hdb, 0,
            "CREATE TABLE `IESTable` ("
            "`Action` CHAR(64), "
            "`Condition` CHAR(64), "
            "`Sequence` LONG PRIMARY KEY `Sequence`)");
    FUNC8( r == S_OK, "Cannot create IESTable table: %d\n", r);

    r = FUNC9(hdb, 0,
            "CREATE TABLE `CATable` ("
            "`Action` CHAR(64), "
            "`Type` LONG PRIMARY KEY `Type`)");
    FUNC8( r == S_OK, "Cannot create CATable table: %d\n", r);

    r = FUNC9(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'clean', 'cond4', 4)");
    FUNC8( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'depends', 'cond1', 1)");
    FUNC8( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'build', 'cond2', 2)");
    FUNC8( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'build2', 'cond6', 6)");
    FUNC8( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'build', 'cond3', 3)");
    FUNC8(r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'build', 32)");
    FUNC8(r == S_OK, "cannot add entry to CATable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'depends', 64)");
    FUNC8(r == S_OK, "cannot add entry to CATable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'clean', 63)");
    FUNC8(r == S_OK, "cannot add entry to CATable table:%d\n", r );

    r = FUNC9(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'build2', 34)");
    FUNC8(r == S_OK, "cannot add entry to CATable table:%d\n", r );
    query = "Select IESTable.Condition from CATable, IESTable where "
            "CATable.Action = IESTable.Action and CATable.Type = 32";
    r = FUNC2(hdb, query, &view);
    FUNC8( r == ERROR_SUCCESS, "failed to open view: %d\n", r );

    r = FUNC4(view, 0);
    FUNC8( r == ERROR_SUCCESS, "failed to execute view: %d\n", r );

    r = FUNC5(view, &rec);
    FUNC8( r == ERROR_SUCCESS, "failed to fetch view: %d\n", r );

    FUNC8( FUNC6( rec, 1, "cond2"), "wrong condition\n");

    FUNC1( rec );
    r = FUNC5(view, &rec);
    FUNC8( r == ERROR_SUCCESS, "failed to fetch view: %d\n", r );

    FUNC8( FUNC6( rec, 1, "cond3"), "wrong condition\n");

    FUNC1( rec );
    FUNC3(view);
    FUNC1(view);

    FUNC1( hdb );
    FUNC0(msifile);
}