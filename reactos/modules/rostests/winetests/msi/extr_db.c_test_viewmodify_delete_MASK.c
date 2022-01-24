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
typedef  int /*<<< orphan*/  buffer ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int /*<<< orphan*/  MSIMODIFY_DELETE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC13(void)
{
    MSIHANDLE hdb = 0, hview = 0, hrec = 0;
    UINT r;
    const char *query;
    char buffer[0x100];
    DWORD sz;

    FUNC0(msifile);

    /* just MsiOpenDatabase should not create a file */
    r = FUNC3(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "CREATE TABLE `phone` ( "
            "`id` INT, `name` CHAR(32), `number` CHAR(32) "
            "PRIMARY KEY `id`)";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES('1', 'Alan', '5030581')";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES('2', 'Barry', '928440')";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES('3', 'Cindy', '2937550')";
    r = FUNC12(hdb, 0, query);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "SELECT * FROM `phone` WHERE `id` <= 2";
    r = FUNC2(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC7(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC8(hview, &hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* delete 1 */
    r = FUNC9(hview, MSIMODIFY_DELETE, hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC1(hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC8(hview, &hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* delete 2 */
    r = FUNC9(hview, MSIMODIFY_DELETE, hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC1(hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC6(hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC1(hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "SELECT * FROM `phone`";
    r = FUNC2(hdb, query, &hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC7(hview, 0);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC8(hview, &hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC4(hrec, 1);
    FUNC11(r == 3, "Expected 3, got %d\n", r);

    sz = sizeof(buffer);
    r = FUNC5(hrec, 2, buffer, &sz);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC11(!FUNC10(buffer, "Cindy"), "Expected Cindy, got %s\n", buffer);

    sz = sizeof(buffer);
    r = FUNC5(hrec, 3, buffer, &sz);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC11(!FUNC10(buffer, "2937550"), "Expected 2937550, got %s\n", buffer);

    r = FUNC1(hrec);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC8(hview, &hrec);
    FUNC11(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    r = FUNC6(hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC1(hview);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC1(hdb);
    FUNC11(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
}