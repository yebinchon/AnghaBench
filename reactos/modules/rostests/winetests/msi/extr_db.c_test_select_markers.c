
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIHANDLE ;
typedef char* LPCSTR ;
typedef int DWORD ;
typedef int CHAR ;


 int DeleteFileA (int ) ;
 int ERROR_NO_MORE_ITEMS ;
 int ERROR_SUCCESS ;
 int MAX_PATH ;
 int MsiCloseHandle (int ) ;
 int MsiCreateRecord (int) ;
 int MsiDatabaseOpenViewA (int ,char*,int *) ;
 int MsiRecordGetInteger (int ,int) ;
 int MsiRecordGetStringA (int ,int,int *,int*) ;
 int MsiRecordSetInteger (int ,int,int) ;
 int MsiRecordSetStringA (int ,int,char*) ;
 int MsiViewClose (int ) ;
 int MsiViewExecute (int ,int ) ;
 int MsiViewFetch (int ,int *) ;
 int S_OK ;
 int create_db () ;
 int lstrcmpA (int *,char*) ;
 int msifile ;
 int ok (int,char*,...) ;
 int run_query (int ,int ,char*) ;

__attribute__((used)) static void test_select_markers(void)
{
    MSIHANDLE hdb = 0, rec, view, res;
    LPCSTR query;
    UINT r;
    DWORD size;
    CHAR buf[MAX_PATH];

    hdb = create_db();
    ok( hdb, "failed to create db\n");

    r = run_query(hdb, 0,
            "CREATE TABLE `Table` (`One` CHAR(72), `Two` CHAR(72), `Three` SHORT PRIMARY KEY `One`, `Two`, `Three`)");
    ok(r == S_OK, "cannot create table: %d\n", r);

    r = run_query(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'apple', 'one', 1 )");
    ok(r == S_OK, "cannot add file to the Media table: %d\n", r);

    r = run_query(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'apple', 'two', 1 )");
    ok(r == S_OK, "cannot add file to the Media table: %d\n", r);

    r = run_query(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'apple', 'two', 2 )");
    ok(r == S_OK, "cannot add file to the Media table: %d\n", r);

    r = run_query(hdb, 0, "INSERT INTO `Table` "
            "( `One`, `Two`, `Three` ) VALUES ( 'banana', 'three', 3 )");
    ok(r == S_OK, "cannot add file to the Media table: %d\n", r);

    rec = MsiCreateRecord(2);
    MsiRecordSetStringA(rec, 1, "apple");
    MsiRecordSetStringA(rec, 2, "two");

    query = "SELECT * FROM `Table` WHERE `One`=? AND `Two`=? ORDER BY `Three`";
    r = MsiDatabaseOpenViewA(hdb, query, &view);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiViewExecute(view, rec);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiViewFetch(view, &res);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 1, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "apple"), "Expected apple, got %s\n", buf);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 2, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "two"), "Expected two, got %s\n", buf);

    r = MsiRecordGetInteger(res, 3);
    ok(r == 1, "Expected 1, got %d\n", r);

    MsiCloseHandle(res);

    r = MsiViewFetch(view, &res);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 1, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "apple"), "Expected apple, got %s\n", buf);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 2, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "two"), "Expected two, got %s\n", buf);

    r = MsiRecordGetInteger(res, 3);
    ok(r == 2, "Expected 2, got %d\n", r);

    MsiCloseHandle(res);

    r = MsiViewFetch(view, &res);
    ok(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    MsiCloseHandle(rec);
    MsiViewClose(view);
    MsiCloseHandle(view);

    rec = MsiCreateRecord(2);
    MsiRecordSetStringA(rec, 1, "one");
    MsiRecordSetInteger(rec, 2, 1);

    query = "SELECT * FROM `Table` WHERE `Two`<>? AND `Three`>? ORDER BY `Three`";
    r = MsiDatabaseOpenViewA(hdb, query, &view);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = MsiViewExecute(view, rec);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiViewFetch(view, &res);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 1, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "apple"), "Expected apple, got %s\n", buf);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 2, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "two"), "Expected two, got %s\n", buf);

    r = MsiRecordGetInteger(res, 3);
    ok(r == 2, "Expected 2, got %d\n", r);

    MsiCloseHandle(res);

    r = MsiViewFetch(view, &res);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 1, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "banana"), "Expected banana, got %s\n", buf);

    size = MAX_PATH;
    r = MsiRecordGetStringA(res, 2, buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "three"), "Expected three, got %s\n", buf);

    r = MsiRecordGetInteger(res, 3);
    ok(r == 3, "Expected 3, got %d\n", r);

    MsiCloseHandle(res);

    r = MsiViewFetch(view, &res);
    ok(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    MsiCloseHandle(rec);
    MsiViewClose(view);
    MsiCloseHandle(view);
    MsiCloseHandle(hdb);
    DeleteFileA(msifile);
}
