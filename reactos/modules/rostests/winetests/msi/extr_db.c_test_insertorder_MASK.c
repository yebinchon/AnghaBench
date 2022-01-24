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
 scalar_t__ ERROR_BAD_QUERY_SYNTAX ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__** ordervals ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    MSIHANDLE hdb, view, rec;
    LPCSTR query;
    UINT r;
    int i;

    hdb = FUNC7();
    FUNC8(hdb, "failed to create db\n");

    query = "CREATE TABLE `T` ( `A` SHORT, `B` SHORT, `C` SHORT PRIMARY KEY `A`)";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `A`, `B`, `C` ) VALUES ( 1, 2, 3 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `B`, `C`, `A` ) VALUES ( 4, 5, 6 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `C`, `A`, `B` ) VALUES ( 7, 8, 9 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `A`, `B` ) VALUES ( 10, 11 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `B`, `C` ) VALUES ( 12, 13 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* fails because the primary key already
     * has an MSI_NULL_INTEGER value set above
     */
    query = "INSERT INTO `T` ( `C` ) VALUES ( 14 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_FUNCTION_FAILED,
       "Expected ERROR_FUNCTION_FAILED, got %d\n", r);

    /* replicate the error where primary key is set twice */
    query = "INSERT INTO `T` ( `A`, `C` ) VALUES ( 1, 14 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_FUNCTION_FAILED,
       "Expected ERROR_FUNCTION_FAILED, got %d\n", r);

    query = "INSERT INTO `T` ( `A`, `C` ) VALUES ( 14, 15 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` VALUES ( 16 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    query = "INSERT INTO `T` VALUES ( 17, 18 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    query = "INSERT INTO `T` VALUES ( 19, 20, 21 )";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    query = "SELECT * FROM `T`";
    r = FUNC2(hdb, query, &view);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC5(view, 0);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    for (i = 0; i < 6; i++)
    {
        r = FUNC6(view, &rec);
        FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

        r = FUNC3(rec, 1);
        FUNC8(r == ordervals[i][0], "Expected %d, got %d\n", ordervals[i][0], r);

        r = FUNC3(rec, 2);
        FUNC8(r == ordervals[i][1], "Expected %d, got %d\n", ordervals[i][1], r);

        r = FUNC3(rec, 3);
        FUNC8(r == ordervals[i][2], "Expected %d, got %d\n", ordervals[i][2], r);

        FUNC1(rec);
    }

    r = FUNC6(view, &rec);
    FUNC8(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    FUNC4(view);
    FUNC1(view);

    query = "DELETE FROM `T` WHERE `A` IS NULL";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `B`, `C` ) VALUES ( 12, 13 ) TEMPORARY";
    r = FUNC9(hdb, 0, query);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "SELECT * FROM `T`";
    r = FUNC2(hdb, query, &view);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC5(view, 0);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    for (i = 0; i < 6; i++)
    {
        r = FUNC6(view, &rec);
        FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

        r = FUNC3(rec, 1);
        FUNC8(r == ordervals[i][0], "Expected %d, got %d\n", ordervals[i][0], r);

        r = FUNC3(rec, 2);
        FUNC8(r == ordervals[i][1], "Expected %d, got %d\n", ordervals[i][1], r);

        r = FUNC3(rec, 3);
        FUNC8(r == ordervals[i][2], "Expected %d, got %d\n", ordervals[i][2], r);

        FUNC1(rec);
    }

    r = FUNC6(view, &rec);
    FUNC8(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    FUNC4(view);
    FUNC1(view);
    FUNC1(hdb);
    FUNC0(msifile);
}