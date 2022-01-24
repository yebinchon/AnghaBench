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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    MSIHANDLE hdb = 0, rec, view, res;
    LPCSTR query;
    UINT r;
    DWORD size;
    CHAR buf[MAX_PATH];

    hdb = FUNC11();
    FUNC13( hdb, "failed to create db\n");

    r = FUNC14(hdb, 0,
            "CREATE TABLE `Table` (`One` CHAR(72), `Two` CHAR(72), `Three` SHORT PRIMARY KEY `One`, `Two`, `Three`)");
    FUNC13(r == S_OK, "cannot create table: %d\n", r);

    r = FUNC14(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'apple', 'one', 1 )");
    FUNC13(r == S_OK, "cannot add file to the Media table: %d\n", r);

    r = FUNC14(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'apple', 'two', 1 )");
    FUNC13(r == S_OK, "cannot add file to the Media table: %d\n", r);

    r = FUNC14(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'apple', 'two', 2 )");
    FUNC13(r == S_OK, "cannot add file to the Media table: %d\n", r);

    r = FUNC14(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'banana', 'three', 3 )");
    FUNC13(r == S_OK, "cannot add file to the Media table: %d\n", r);

    rec = FUNC2(2);
    FUNC7(rec, 1, "apple");
    FUNC7(rec, 2, "two");

    query = "SELECT * FROM `Table` WHERE `One`=? AND `Two`=? ORDER BY `Three`";
    r = FUNC3(hdb, query, &view);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC9(view, rec);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC10(view, &res);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = FUNC5(res, 1, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "apple"), "Expected apple, got %s\n", buf);

    size = MAX_PATH;
    r = FUNC5(res, 2, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "two"), "Expected two, got %s\n", buf);

    r = FUNC4(res, 3);
    FUNC13(r == 1, "Expected 1, got %d\n", r);

    FUNC1(res);

    r = FUNC10(view, &res);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = FUNC5(res, 1, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "apple"), "Expected apple, got %s\n", buf);

    size = MAX_PATH;
    r = FUNC5(res, 2, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "two"), "Expected two, got %s\n", buf);

    r = FUNC4(res, 3);
    FUNC13(r == 2, "Expected 2, got %d\n", r);

    FUNC1(res);

    r = FUNC10(view, &res);
    FUNC13(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    FUNC1(rec);
    FUNC8(view);
    FUNC1(view);

    rec = FUNC2(2);
    FUNC7(rec, 1, "one");
    FUNC6(rec, 2, 1);

    query = "SELECT * FROM `Table` WHERE `Two`<>? AND `Three`>? ORDER BY `Three`";
    r = FUNC3(hdb, query, &view);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC9(view, rec);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC10(view, &res);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = FUNC5(res, 1, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "apple"), "Expected apple, got %s\n", buf);

    size = MAX_PATH;
    r = FUNC5(res, 2, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "two"), "Expected two, got %s\n", buf);

    r = FUNC4(res, 3);
    FUNC13(r == 2, "Expected 2, got %d\n", r);

    FUNC1(res);

    r = FUNC10(view, &res);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = FUNC5(res, 1, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "banana"), "Expected banana, got %s\n", buf);

    size = MAX_PATH;
    r = FUNC5(res, 2, buf, &size);
    FUNC13(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC13(!FUNC12(buf, "three"), "Expected three, got %s\n", buf);

    r = FUNC4(res, 3);
    FUNC13(r == 3, "Expected 3, got %d\n", r);

    FUNC1(res);

    r = FUNC10(view, &res);
    FUNC13(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    FUNC1(rec);
    FUNC8(view);
    FUNC1(view);
    FUNC1(hdb);
    FUNC0(msifile);
}