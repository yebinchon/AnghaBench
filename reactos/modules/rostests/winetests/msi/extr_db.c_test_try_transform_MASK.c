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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ERROR_INSTALL_PACKAGE_REJECTED ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSIDBOPEN_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,char*,scalar_t__*) ; 
 int FUNC6 (scalar_t__,char*,char*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC8 (scalar_t__,int) ; 
 int FUNC9 (scalar_t__,int,char*,int*) ; 
 int FUNC10 (scalar_t__,int,char*,int*) ; 
 int FUNC11 (scalar_t__,int,int) ; 
 int FUNC12 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 char* msifile ; 
 int /*<<< orphan*/  msifileW ; 
 char* mstfile ; 
 int /*<<< orphan*/  FUNC22 (int,char*,...) ; 
 int FUNC23 (scalar_t__,scalar_t__*) ; 
 int FUNC24 (scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,int) ; 

__attribute__((used)) static void FUNC27(void)
{
    MSIHANDLE hdb, hview, hrec, hpkg = 0;
    LPCSTR query;
    UINT r;
    DWORD sz;
    char buffer[MAX_PATH];

    FUNC0(msifile);
    FUNC0(mstfile);

    /* create the database */
    hdb = FUNC16(msifileW);
    FUNC22(hdb, "Failed to create package db\n");

    query = "CREATE TABLE `MOO` ( `NOO` SHORT NOT NULL, `OOO` CHAR(255) PRIMARY KEY `NOO`)";
    r = FUNC24(hdb, 0, query);
    FUNC22(r == ERROR_SUCCESS, "failed to add table\n");

    query = "INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 1, 'a' )";
    r = FUNC24(hdb, 0, query);
    FUNC22(r == ERROR_SUCCESS, "failed to add row\n");

    query = "INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 2, 'b' )";
    r = FUNC24(hdb, 0, query);
    FUNC22(r == ERROR_SUCCESS, "failed to add row\n");

    query = "INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 3, 'c' )";
    r = FUNC24(hdb, 0, query);
    FUNC22(r == ERROR_SUCCESS, "failed to add row\n");

    query = "CREATE TABLE `BINARY` ( `ID` SHORT NOT NULL, `BLOB` OBJECT PRIMARY KEY `ID`)";
    r = FUNC24(hdb, 0, query);
    FUNC22(r == ERROR_SUCCESS, "failed to add table\n");

    hrec = FUNC2(2);
    r = FUNC11(hrec, 1, 2);
    FUNC22(r == ERROR_SUCCESS, "failed to set integer\n");

    FUNC26("testdata.bin", "lamyon", 6);
    r = FUNC12(hrec, 2, "testdata.bin");
    FUNC22(r == ERROR_SUCCESS, "failed to set stream\n");

    query = "INSERT INTO `BINARY` ( `ID`, `BLOB` ) VALUES ( ?, ? )";
    r = FUNC24(hdb, hrec, query);
    FUNC22(r == ERROR_SUCCESS, "failed to add row with blob\n");

    FUNC1(hrec);

    r = FUNC4( hdb );
    FUNC22( r == ERROR_SUCCESS , "Failed to commit database\n" );

    FUNC1( hdb );
    FUNC0("testdata.bin");

    /*
     * Both these generate an equivalent transform,
     *  but the first doesn't work in Wine yet
     *  because MsiDatabaseGenerateTransform is unimplemented.
     */
    if (0)
        FUNC18();
    else
        FUNC19();

    r = FUNC7(msifileW, MSIDBOPEN_DIRECT, &hdb );
    FUNC22( r == ERROR_SUCCESS , "Failed to create database\n" );

    r = FUNC3( hdb, mstfile, 0 );
    FUNC22( r == ERROR_SUCCESS, "return code %d, should be ERROR_SUCCESS\n", r );

    r = FUNC4( hdb );
    FUNC22( r == ERROR_SUCCESS , "Failed to commit database\n" );

    /* check new values */
    hrec = 0;
    query = "select `BAR`,`CAR` from `AAR` where `BAR` = 1 AND `CAR` = 'vw'";
    r = FUNC17(hdb, query, &hrec);
    FUNC22(r == ERROR_SUCCESS, "select query failed\n");
    FUNC1(hrec);

    query = "select `BAR`,`CAR` from `AAR` where `BAR` = 2 AND `CAR` = 'bmw'";
    hrec = 0;
    r = FUNC17(hdb, query, &hrec);
    FUNC22(r == ERROR_SUCCESS, "select query failed\n");
    FUNC1(hrec);

    /* check updated values */
    hrec = 0;
    query = "select `NOO`,`OOO` from `MOO` where `NOO` = 1 AND `OOO` = 'c'";
    r = FUNC17(hdb, query, &hrec);
    FUNC22(r == ERROR_SUCCESS, "select query failed\n");
    FUNC1(hrec);

    /* check unchanged value */
    hrec = 0;
    query = "select `NOO`,`OOO` from `MOO` where `NOO` = 2 AND `OOO` = 'b'";
    r = FUNC17(hdb, query, &hrec);
    FUNC22(r == ERROR_SUCCESS, "select query failed\n");
    FUNC1(hrec);

    /* check deleted value */
    hrec = 0;
    query = "select * from `MOO` where `NOO` = 3";
    r = FUNC17(hdb, query, &hrec);
    FUNC22(r == ERROR_NO_MORE_ITEMS, "select query failed\n");
    if (hrec) FUNC1(hrec);

    /* check added stream */
    hrec = 0;
    query = "select `BLOB` from `BINARY` where `ID` = 1";
    r = FUNC17(hdb, query, &hrec);
    FUNC22(r == ERROR_SUCCESS, "select query failed\n");

    /* check the contents of the stream */
    sz = sizeof buffer;
    r = FUNC10( hrec, 1, buffer, &sz );
    FUNC22(r == ERROR_SUCCESS, "read stream failed\n");
    FUNC22(!FUNC21(buffer, "naengmyon", 9), "stream data was wrong\n");
    FUNC22(sz == 9, "stream data was wrong size\n");
    if (hrec) FUNC1(hrec);

    /* check the validity of the table with a deleted row */
    hrec = 0;
    query = "select * from `MOO`";
    r = FUNC5(hdb, query, &hview);
    FUNC22(r == ERROR_SUCCESS, "open view failed\n");

    r = FUNC14(hview, 0);
    FUNC22(r == ERROR_SUCCESS, "view execute failed\n");

    r = FUNC15(hview, &hrec);
    FUNC22(r == ERROR_SUCCESS, "view fetch failed\n");

    r = FUNC8(hrec, 1);
    FUNC22(r == 1, "Expected 1, got %d\n", r);

    sz = sizeof buffer;
    r = FUNC9(hrec, 2, buffer, &sz);
    FUNC22(r == ERROR_SUCCESS, "record get string failed\n");
    FUNC22(!FUNC20(buffer, "c"), "Expected c, got %s\n", buffer);

    r = FUNC8(hrec, 3);
    FUNC22(r == 0x80000000, "Expected 0x80000000, got %d\n", r);

    r = FUNC8(hrec, 4);
    FUNC22(r == 5, "Expected 5, got %d\n", r);

    FUNC1(hrec);

    r = FUNC15(hview, &hrec);
    FUNC22(r == ERROR_SUCCESS, "view fetch failed\n");

    r = FUNC8(hrec, 1);
    FUNC22(r == 2, "Expected 2, got %d\n", r);

    sz = sizeof buffer;
    r = FUNC9(hrec, 2, buffer, &sz);
    FUNC22(r == ERROR_SUCCESS, "record get string failed\n");
    FUNC22(!FUNC20(buffer, "b"), "Expected b, got %s\n", buffer);

    r = FUNC8(hrec, 3);
    FUNC22(r == 0x80000000, "Expected 0x80000000, got %d\n", r);

    r = FUNC8(hrec, 4);
    FUNC22(r == 0x80000000, "Expected 0x80000000, got %d\n", r);

    FUNC1(hrec);

    r = FUNC15(hview, &hrec);
    FUNC22(r == ERROR_NO_MORE_ITEMS, "view fetch succeeded\n");

    FUNC1(hrec);
    FUNC13(hview);
    FUNC1(hview);

    /* check that the property was added */
    r = FUNC23(hdb, &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC25("Not enough rights to perform tests\n");
        goto error;
    }
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    sz = MAX_PATH;
    r = FUNC6(hpkg, "prop", buffer, &sz);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC20(buffer, "val"), "Expected val, got %s\n", buffer);

    FUNC1(hpkg);

error:
    FUNC1(hdb);
    FUNC0(msifile);
    FUNC0(mstfile);
}