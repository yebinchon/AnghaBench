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
typedef  char* LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    MSIHANDLE hdb, view, rec;
    LPCSTR query;
    UINT r;
    int i;

    int vals[4][2] = {
        {1,12},
        {4,12},
        {1,15},
        {4,15}};

    hdb = FUNC7();
    FUNC8(hdb, "failed to create db\n");

    /* Build a pair of tables with the same column names, but unique data */
    query = "CREATE TABLE `T1` ( `A` SHORT, `B` SHORT PRIMARY KEY `A`)";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T1` ( `A`, `B` ) VALUES ( 1, 2 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T1` ( `A`, `B` ) VALUES ( 4, 5 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "CREATE TABLE `T2` ( `A` SHORT, `B` SHORT PRIMARY KEY `A`)";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T2` ( `A`, `B` ) VALUES ( 11, 12 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T2` ( `A`, `B` ) VALUES ( 14, 15 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    /* Test that selection based on prefixing the column with the table
     * actually selects the right data */

    query = "SELECT T1.A, T2.B FROM T1,T2";
    r = FUNC2(hdb, query, &view);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC5(view, 0);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    for (i = 0; i < 4; i++)
    {
        r = FUNC6(view, &rec);
        FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

        r = FUNC3(rec, 1);
        FUNC8(r == vals[i][0], "Expected %d, got %d\n", vals[i][0], r);

        r = FUNC3(rec, 2);
        FUNC8(r == vals[i][1], "Expected %d, got %d\n", vals[i][1], r);

        FUNC1(rec);
    }

    r = FUNC6(view, &rec);
    FUNC8(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    FUNC4(view);
    FUNC1(view);
    FUNC1(hdb);
    FUNC0(msifile);
}