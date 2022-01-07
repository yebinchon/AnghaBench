
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ MSIHANDLE ;
typedef char* LPCSTR ;
typedef int DWORD ;


 int DeleteFileA (char*) ;
 int ERROR_INSTALL_PACKAGE_REJECTED ;
 int ERROR_NO_MORE_ITEMS ;
 int ERROR_SUCCESS ;
 int MAX_PATH ;
 int MSIDBOPEN_DIRECT ;
 int MsiCloseHandle (scalar_t__) ;
 scalar_t__ MsiCreateRecord (int) ;
 int MsiDatabaseApplyTransformA (scalar_t__,char*,int ) ;
 int MsiDatabaseCommit (scalar_t__) ;
 int MsiDatabaseOpenViewA (scalar_t__,char*,scalar_t__*) ;
 int MsiGetPropertyA (scalar_t__,char*,char*,int*) ;
 int MsiOpenDatabaseW (int ,int ,scalar_t__*) ;
 int MsiRecordGetInteger (scalar_t__,int) ;
 int MsiRecordGetStringA (scalar_t__,int,char*,int*) ;
 int MsiRecordReadStream (scalar_t__,int,char*,int*) ;
 int MsiRecordSetInteger (scalar_t__,int,int) ;
 int MsiRecordSetStreamA (scalar_t__,int,char*) ;
 int MsiViewClose (scalar_t__) ;
 int MsiViewExecute (scalar_t__,int ) ;
 int MsiViewFetch (scalar_t__,scalar_t__*) ;
 scalar_t__ create_package_db (int ) ;
 int do_query (scalar_t__,char*,scalar_t__*) ;
 int generate_transform () ;
 int generate_transform_manual () ;
 int lstrcmpA (char*,char*) ;
 int memcmp (char*,char*,int) ;
 char* msifile ;
 int msifileW ;
 char* mstfile ;
 int ok (int,char*,...) ;
 int package_from_db (scalar_t__,scalar_t__*) ;
 int run_query (scalar_t__,scalar_t__,char*) ;
 int skip (char*) ;
 int write_file (char*,char*,int) ;

__attribute__((used)) static void test_try_transform(void)
{
    MSIHANDLE hdb, hview, hrec, hpkg = 0;
    LPCSTR query;
    UINT r;
    DWORD sz;
    char buffer[MAX_PATH];

    DeleteFileA(msifile);
    DeleteFileA(mstfile);


    hdb = create_package_db(msifileW);
    ok(hdb, "Failed to create package db\n");

    query = "CREATE TABLE `MOO` ( `NOO` SHORT NOT NULL, `OOO` CHAR(255) PRIMARY KEY `NOO`)";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "failed to add table\n");

    query = "INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 1, 'a' )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "failed to add row\n");

    query = "INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 2, 'b' )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "failed to add row\n");

    query = "INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 3, 'c' )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "failed to add row\n");

    query = "CREATE TABLE `BINARY` ( `ID` SHORT NOT NULL, `BLOB` OBJECT PRIMARY KEY `ID`)";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "failed to add table\n");

    hrec = MsiCreateRecord(2);
    r = MsiRecordSetInteger(hrec, 1, 2);
    ok(r == ERROR_SUCCESS, "failed to set integer\n");

    write_file("testdata.bin", "lamyon", 6);
    r = MsiRecordSetStreamA(hrec, 2, "testdata.bin");
    ok(r == ERROR_SUCCESS, "failed to set stream\n");

    query = "INSERT INTO `BINARY` ( `ID`, `BLOB` ) VALUES ( ?, ? )";
    r = run_query(hdb, hrec, query);
    ok(r == ERROR_SUCCESS, "failed to add row with blob\n");

    MsiCloseHandle(hrec);

    r = MsiDatabaseCommit( hdb );
    ok( r == ERROR_SUCCESS , "Failed to commit database\n" );

    MsiCloseHandle( hdb );
    DeleteFileA("testdata.bin");






    if (0)
        generate_transform();
    else
        generate_transform_manual();

    r = MsiOpenDatabaseW(msifileW, MSIDBOPEN_DIRECT, &hdb );
    ok( r == ERROR_SUCCESS , "Failed to create database\n" );

    r = MsiDatabaseApplyTransformA( hdb, mstfile, 0 );
    ok( r == ERROR_SUCCESS, "return code %d, should be ERROR_SUCCESS\n", r );

    r = MsiDatabaseCommit( hdb );
    ok( r == ERROR_SUCCESS , "Failed to commit database\n" );


    hrec = 0;
    query = "select `BAR`,`CAR` from `AAR` where `BAR` = 1 AND `CAR` = 'vw'";
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_SUCCESS, "select query failed\n");
    MsiCloseHandle(hrec);

    query = "select `BAR`,`CAR` from `AAR` where `BAR` = 2 AND `CAR` = 'bmw'";
    hrec = 0;
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_SUCCESS, "select query failed\n");
    MsiCloseHandle(hrec);


    hrec = 0;
    query = "select `NOO`,`OOO` from `MOO` where `NOO` = 1 AND `OOO` = 'c'";
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_SUCCESS, "select query failed\n");
    MsiCloseHandle(hrec);


    hrec = 0;
    query = "select `NOO`,`OOO` from `MOO` where `NOO` = 2 AND `OOO` = 'b'";
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_SUCCESS, "select query failed\n");
    MsiCloseHandle(hrec);


    hrec = 0;
    query = "select * from `MOO` where `NOO` = 3";
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_NO_MORE_ITEMS, "select query failed\n");
    if (hrec) MsiCloseHandle(hrec);


    hrec = 0;
    query = "select `BLOB` from `BINARY` where `ID` = 1";
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_SUCCESS, "select query failed\n");


    sz = sizeof buffer;
    r = MsiRecordReadStream( hrec, 1, buffer, &sz );
    ok(r == ERROR_SUCCESS, "read stream failed\n");
    ok(!memcmp(buffer, "naengmyon", 9), "stream data was wrong\n");
    ok(sz == 9, "stream data was wrong size\n");
    if (hrec) MsiCloseHandle(hrec);


    hrec = 0;
    query = "select * from `MOO`";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "open view failed\n");

    r = MsiViewExecute(hview, 0);
    ok(r == ERROR_SUCCESS, "view execute failed\n");

    r = MsiViewFetch(hview, &hrec);
    ok(r == ERROR_SUCCESS, "view fetch failed\n");

    r = MsiRecordGetInteger(hrec, 1);
    ok(r == 1, "Expected 1, got %d\n", r);

    sz = sizeof buffer;
    r = MsiRecordGetStringA(hrec, 2, buffer, &sz);
    ok(r == ERROR_SUCCESS, "record get string failed\n");
    ok(!lstrcmpA(buffer, "c"), "Expected c, got %s\n", buffer);

    r = MsiRecordGetInteger(hrec, 3);
    ok(r == 0x80000000, "Expected 0x80000000, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 4);
    ok(r == 5, "Expected 5, got %d\n", r);

    MsiCloseHandle(hrec);

    r = MsiViewFetch(hview, &hrec);
    ok(r == ERROR_SUCCESS, "view fetch failed\n");

    r = MsiRecordGetInteger(hrec, 1);
    ok(r == 2, "Expected 2, got %d\n", r);

    sz = sizeof buffer;
    r = MsiRecordGetStringA(hrec, 2, buffer, &sz);
    ok(r == ERROR_SUCCESS, "record get string failed\n");
    ok(!lstrcmpA(buffer, "b"), "Expected b, got %s\n", buffer);

    r = MsiRecordGetInteger(hrec, 3);
    ok(r == 0x80000000, "Expected 0x80000000, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 4);
    ok(r == 0x80000000, "Expected 0x80000000, got %d\n", r);

    MsiCloseHandle(hrec);

    r = MsiViewFetch(hview, &hrec);
    ok(r == ERROR_NO_MORE_ITEMS, "view fetch succeeded\n");

    MsiCloseHandle(hrec);
    MsiViewClose(hview);
    MsiCloseHandle(hview);


    r = package_from_db(hdb, &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        goto error;
    }
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    sz = MAX_PATH;
    r = MsiGetPropertyA(hpkg, "prop", buffer, &sz);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buffer, "val"), "Expected val, got %s\n", buffer);

    MsiCloseHandle(hpkg);

error:
    MsiCloseHandle(hdb);
    DeleteFileA(msifile);
    DeleteFileA(mstfile);
}
