
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef char* LPCSTR ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_BAD_QUERY_SYNTAX ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char*,int *) ;
 scalar_t__ MsiRecordGetInteger (int ,int) ;
 int MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 scalar_t__ MsiViewFetch (int ,int *) ;
 int create_db () ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__** ordervals ;
 scalar_t__ run_query (int ,int ,char*) ;

__attribute__((used)) static void test_insertorder(void)
{
    MSIHANDLE hdb, view, rec;
    LPCSTR query;
    UINT r;
    int i;

    hdb = create_db();
    ok(hdb, "failed to create db\n");

    query = "CREATE TABLE `T` ( `A` SHORT, `B` SHORT, `C` SHORT PRIMARY KEY `A`)";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `A`, `B`, `C` ) VALUES ( 1, 2, 3 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `B`, `C`, `A` ) VALUES ( 4, 5, 6 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `C`, `A`, `B` ) VALUES ( 7, 8, 9 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `A`, `B` ) VALUES ( 10, 11 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `B`, `C` ) VALUES ( 12, 13 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);




    query = "INSERT INTO `T` ( `C` ) VALUES ( 14 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_FUNCTION_FAILED,
       "Expected ERROR_FUNCTION_FAILED, got %d\n", r);


    query = "INSERT INTO `T` ( `A`, `C` ) VALUES ( 1, 14 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_FUNCTION_FAILED,
       "Expected ERROR_FUNCTION_FAILED, got %d\n", r);

    query = "INSERT INTO `T` ( `A`, `C` ) VALUES ( 14, 15 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` VALUES ( 16 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    query = "INSERT INTO `T` VALUES ( 17, 18 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    query = "INSERT INTO `T` VALUES ( 19, 20, 21 )";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    query = "SELECT * FROM `T`";
    r = MsiDatabaseOpenViewA(hdb, query, &view);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = MsiViewExecute(view, 0);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    for (i = 0; i < 6; i++)
    {
        r = MsiViewFetch(view, &rec);
        ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

        r = MsiRecordGetInteger(rec, 1);
        ok(r == ordervals[i][0], "Expected %d, got %d\n", ordervals[i][0], r);

        r = MsiRecordGetInteger(rec, 2);
        ok(r == ordervals[i][1], "Expected %d, got %d\n", ordervals[i][1], r);

        r = MsiRecordGetInteger(rec, 3);
        ok(r == ordervals[i][2], "Expected %d, got %d\n", ordervals[i][2], r);

        MsiCloseHandle(rec);
    }

    r = MsiViewFetch(view, &rec);
    ok(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    MsiViewClose(view);
    MsiCloseHandle(view);

    query = "DELETE FROM `T` WHERE `A` IS NULL";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "INSERT INTO `T` ( `B`, `C` ) VALUES ( 12, 13 ) TEMPORARY";
    r = run_query(hdb, 0, query);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    query = "SELECT * FROM `T`";
    r = MsiDatabaseOpenViewA(hdb, query, &view);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    r = MsiViewExecute(view, 0);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    for (i = 0; i < 6; i++)
    {
        r = MsiViewFetch(view, &rec);
        ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

        r = MsiRecordGetInteger(rec, 1);
        ok(r == ordervals[i][0], "Expected %d, got %d\n", ordervals[i][0], r);

        r = MsiRecordGetInteger(rec, 2);
        ok(r == ordervals[i][1], "Expected %d, got %d\n", ordervals[i][1], r);

        r = MsiRecordGetInteger(rec, 3);
        ok(r == ordervals[i][2], "Expected %d, got %d\n", ordervals[i][2], r);

        MsiCloseHandle(rec);
    }

    r = MsiViewFetch(view, &rec);
    ok(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    MsiViewClose(view);
    MsiCloseHandle(view);
    MsiCloseHandle(hdb);
    DeleteFileA(msifile);
}
