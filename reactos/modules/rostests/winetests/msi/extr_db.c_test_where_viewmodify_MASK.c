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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int /*<<< orphan*/  MSIMODIFY_INSERT_TEMPORARY ; 
 int /*<<< orphan*/  MSIMODIFY_REFRESH ; 
 int /*<<< orphan*/  MSIMODIFY_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC13(void)
{
    MSIHANDLE hdb, hview, hrec;
    const char *query;
    UINT r;

    FUNC0(msifile);

    r = FUNC4(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "CREATE TABLE `Table` ( `A` INT, `B` INT PRIMARY KEY `A` )";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `Table` ( `A`, `B` ) VALUES ( 1, 2 )";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `Table` ( `A`, `B` ) VALUES ( 3, 4 )";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `Table` ( `A`, `B` ) VALUES ( 5, 6 )";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* `B` = 3 doesn't match, but the view shouldn't be executed */
    query = "SELECT * FROM `Table` WHERE `B` = 3";
    r = FUNC3(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    hrec = FUNC2(2);
    FUNC6(hrec, 1, 7);
    FUNC6(hrec, 2, 8);

    r = FUNC10(hview, MSIMODIFY_INSERT_TEMPORARY, hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    FUNC1(hrec);
    FUNC7(hview);
    FUNC1(hview);

    query = "SELECT * FROM `Table` WHERE `A` = 7";
    r = FUNC3(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC8(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC9(hview, &hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC5(hrec, 1);
    FUNC11(r == 7, "Expected 7, got %d\n", r);

    r = FUNC5(hrec, 2);
    FUNC11(r == 8, "Expected 8, got %d\n", r);

    FUNC6(hrec, 2, 9);

    r = FUNC10(hview, MSIMODIFY_UPDATE, hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    FUNC1(hrec);
    FUNC7(hview);
    FUNC1(hview);

    query = "SELECT * FROM `Table` WHERE `A` = 7";
    r = FUNC3(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC8(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC9(hview, &hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC5(hrec, 1);
    FUNC11(r == 7, "Expected 7, got %d\n", r);

    r = FUNC5(hrec, 2);
    FUNC11(r == 9, "Expected 9, got %d\n", r);

    query = "UPDATE `Table` SET `B` = 10 WHERE `A` = 7";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC10(hview, MSIMODIFY_REFRESH, hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC5(hrec, 1);
    FUNC11(r == 7, "Expected 7, got %d\n", r);

    r = FUNC5(hrec, 2);
    FUNC11(r == 10, "Expected 10, got %d\n", r);

    FUNC1(hrec);
    FUNC7(hview);
    FUNC1(hview);
    FUNC1(hdb);
}