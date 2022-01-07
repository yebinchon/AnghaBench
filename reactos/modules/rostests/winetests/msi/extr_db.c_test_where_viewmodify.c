
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIHANDLE ;


 int DeleteFileA (int ) ;
 int ERROR_SUCCESS ;
 int MSIDBOPEN_CREATE ;
 int MSIMODIFY_INSERT_TEMPORARY ;
 int MSIMODIFY_REFRESH ;
 int MSIMODIFY_UPDATE ;
 int MsiCloseHandle (int ) ;
 int MsiCreateRecord (int) ;
 int MsiDatabaseOpenViewA (int ,char const*,int *) ;
 int MsiOpenDatabaseW (int ,int ,int *) ;
 int MsiRecordGetInteger (int ,int) ;
 int MsiRecordSetInteger (int ,int,int) ;
 int MsiViewClose (int ) ;
 int MsiViewExecute (int ,int ) ;
 int MsiViewFetch (int ,int *) ;
 int MsiViewModify (int ,int ,int ) ;
 int msifile ;
 int msifileW ;
 int ok (int,char*,int) ;
 int run_query (int ,int ,char const*) ;

__attribute__((used)) static void test_where_viewmodify(void)
{
    MSIHANDLE hdb, hview, hrec;
    const char *query;
    UINT r;

    DeleteFileA(msifile);

    r = MsiOpenDatabaseW(msifileW, MSIDBOPEN_CREATE, &hdb);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "CREATE TABLE `Table` ( `A` INT, `B` INT PRIMARY KEY `A` )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `Table` ( `A`, `B` ) VALUES ( 1, 2 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `Table` ( `A`, `B` ) VALUES ( 3, 4 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `Table` ( `A`, `B` ) VALUES ( 5, 6 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    query = "SELECT * FROM `Table` WHERE `B` = 3";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    hrec = MsiCreateRecord(2);
    MsiRecordSetInteger(hrec, 1, 7);
    MsiRecordSetInteger(hrec, 2, 8);

    r = MsiViewModify(hview, MSIMODIFY_INSERT_TEMPORARY, hrec);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    MsiCloseHandle(hrec);
    MsiViewClose(hview);
    MsiCloseHandle(hview);

    query = "SELECT * FROM `Table` WHERE `A` = 7";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = MsiViewExecute(hview, 0);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiViewFetch(hview, &hrec);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 1);
    ok(r == 7, "Expected 7, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 2);
    ok(r == 8, "Expected 8, got %d\n", r);

    MsiRecordSetInteger(hrec, 2, 9);

    r = MsiViewModify(hview, MSIMODIFY_UPDATE, hrec);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    MsiCloseHandle(hrec);
    MsiViewClose(hview);
    MsiCloseHandle(hview);

    query = "SELECT * FROM `Table` WHERE `A` = 7";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = MsiViewExecute(hview, 0);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiViewFetch(hview, &hrec);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 1);
    ok(r == 7, "Expected 7, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 2);
    ok(r == 9, "Expected 9, got %d\n", r);

    query = "UPDATE `Table` SET `B` = 10 WHERE `A` = 7";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiViewModify(hview, MSIMODIFY_REFRESH, hrec);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 1);
    ok(r == 7, "Expected 7, got %d\n", r);

    r = MsiRecordGetInteger(hrec, 2);
    ok(r == 10, "Expected 10, got %d\n", r);

    MsiCloseHandle(hrec);
    MsiViewClose(hview);
    MsiCloseHandle(hview);
    MsiCloseHandle(hdb);
}
