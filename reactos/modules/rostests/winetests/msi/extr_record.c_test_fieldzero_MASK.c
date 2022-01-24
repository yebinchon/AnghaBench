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
typedef  char* LPCSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_INVALID_TABLE ; 
 int ERROR_SUCCESS ; 
 int FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int MSI_NULL_INTEGER ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__,char*,scalar_t__*) ; 
 int FUNC4 (scalar_t__,char*,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (scalar_t__,int) ; 
 int FUNC7 (scalar_t__,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,int,int) ; 
 int FUNC10 (scalar_t__,int,char*) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,scalar_t__*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 

__attribute__((used)) static void FUNC17(void)
{
    MSIHANDLE hdb, hview, rec;
    CHAR buf[MAX_PATH];
    LPCSTR query;
    DWORD sz;
    UINT r;

    rec = FUNC2(1);
    FUNC16(rec != 0, "Expected a valid handle\n");

    r = FUNC6(rec, 0);
    FUNC16(r == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", r);

    sz = MAX_PATH;
    FUNC15(buf, "apple");
    r = FUNC7(rec, 0, buf, &sz);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC16(!FUNC14(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    FUNC16(sz == 0, "Expected 0, got %d\n", sz);

    r = FUNC8(rec, 0);
    FUNC16(r == TRUE, "Expected TRUE, got %d\n", r);

    r = FUNC6(rec, 1);
    FUNC16(r == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", r);

    r = FUNC9(rec, 1, 42);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC6(rec, 0);
    FUNC16(r == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", r);

    sz = MAX_PATH;
    FUNC15(buf, "apple");
    r = FUNC7(rec, 0, buf, &sz);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC16(!FUNC14(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    FUNC16(sz == 0, "Expected 0, got %d\n", sz);

    r = FUNC8(rec, 0);
    FUNC16(r == TRUE, "Expected TRUE, got %d\n", r);

    r = FUNC6(rec, 1);
    FUNC16(r == 42, "Expected 42, got %d\n", r);

    r = FUNC10(rec, 1, "bologna");
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC6(rec, 0);
    FUNC16(r == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", r);

    sz = MAX_PATH;
    FUNC15(buf, "apple");
    r = FUNC7(rec, 0, buf, &sz);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC16(!FUNC14(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    FUNC16(sz == 0, "Expected 0, got %d\n", sz);

    r = FUNC8(rec, 0);
    FUNC16(r == TRUE, "Expected TRUE, got %d\n", r);

    sz = MAX_PATH;
    FUNC15(buf, "apple");
    r = FUNC7(rec, 1, buf, &sz);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC16(!FUNC14(buf, "bologna"), "Expected \"bologna\", got \"%s\"\n", buf);
    FUNC16(sz == 7, "Expected 7, got %d\n", sz);

    FUNC1(rec);

    r = FUNC5(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC16(r == ERROR_SUCCESS, "MsiOpenDatabase failed\n");

    query = "CREATE TABLE `drone` ( "
           "`id` INT, `name` CHAR(32), `number` CHAR(32) "
           "PRIMARY KEY `id`)";
    r = FUNC4(hdb, query, &hview);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC12(hview, 0);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC11(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    query = "INSERT INTO `drone` ( `id`, `name`, `number` )"
           "VALUES('1', 'Abe', '8675309')";
    r = FUNC4(hdb, query, &hview);
    FUNC16(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC12(hview, 0);
    FUNC16(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC11(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC1(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    r = FUNC3(hdb, "drone", &rec);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC6(rec, 0);
    FUNC16(r == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", r);

    sz = MAX_PATH;
    FUNC15(buf, "apple");
    r = FUNC7(rec, 0, buf, &sz);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC16(!FUNC14(buf, "drone"), "Expected \"drone\", got \"%s\"\n", buf);
    FUNC16(sz == 5, "Expected 5, got %d\n", sz);

    r = FUNC8(rec, 0);
    FUNC16(r == FALSE, "Expected FALSE, got %d\n", r);

    FUNC1(rec);

    r = FUNC3(hdb, "nosuchtable", &rec);
    FUNC16(r == ERROR_INVALID_TABLE, "Expected ERROR_INVALID_TABLE, got %d\n", r);

    query = "SELECT * FROM `drone` WHERE `id` = 1";
    r = FUNC4(hdb, query, &hview);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC12(hview, 0);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = FUNC13(hview, &rec);
    FUNC16(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC6(rec, 0);
    FUNC16(r != MSI_NULL_INTEGER && r != 0, "Expected non-NULL value, got %d\n", r);

    r = FUNC8(rec, 0);
    FUNC16(r == FALSE, "Expected FALSE, got %d\n", r);

    r = FUNC1(hview);
    FUNC16(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");
    FUNC1(rec);
    FUNC1(hdb);
    FUNC0(msifile);
}