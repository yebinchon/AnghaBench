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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 char* msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 scalar_t__ FUNC16 (char const*) ; 

__attribute__((used)) static void FUNC17(void)
{
    MSIHANDLE hdb = 0, hview = 0;
    UINT r;
    const char *query;
    char path[MAX_PATH];
    const char file[] = "phone.txt";
    HANDLE handle;
    char buffer[0x100];
    DWORD length;
    const char expected[] =
        "id\tname\tnumber\r\n"
        "I2\tS32\tS32\r\n"
        "phone\tid\r\n"
        "1\tAbe\t8675309\r\n";

    FUNC3(msifileW);

    /* just MsiOpenDatabase should not create a file */
    r = FUNC8(msifileW, MSIDBOPEN_CREATE, &hdb);
    FUNC15(r == ERROR_SUCCESS, "MsiOpenDatabase failed\n");

    /* create a table */
    query = "CREATE TABLE `phone` ( "
            "`id` INT, `name` CHAR(32), `number` CHAR(32) "
            "PRIMARY KEY `id`)";
    r = FUNC7(hdb, query, &hview);
    FUNC15(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC10(hview, 0);
    FUNC15(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC9(hview);
    FUNC15(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC5(hview);
    FUNC15(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    /* insert a value into it */
    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES('1', 'Abe', '8675309')";
    r = FUNC7(hdb, query, &hview);
    FUNC15(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = FUNC10(hview, 0);
    FUNC15(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = FUNC9(hview);
    FUNC15(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = FUNC5(hview);
    FUNC15(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    FUNC4(MAX_PATH, path);

    r = FUNC6(hdb, "phone", path, file);
    FUNC15(r == ERROR_SUCCESS, "MsiDatabaseExport failed\n");

    FUNC5(hdb);

    FUNC12(path, "\\");
    FUNC12(path, file);

    /* check the data that was written */
    length = 0;
    FUNC14(buffer, 0, sizeof buffer);
    handle = FUNC1(path, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    if (handle != INVALID_HANDLE_VALUE)
    {
        FUNC11(handle, buffer, sizeof buffer, &length, NULL);
        FUNC0(handle);
        FUNC2(path);
    }
    else
        FUNC15(0, "failed to open file %s\n", path);

    FUNC15( length == FUNC16(expected), "length of data wrong\n");
    FUNC15( !FUNC13(buffer, expected), "data doesn't match\n");
    FUNC2(msifile);
}