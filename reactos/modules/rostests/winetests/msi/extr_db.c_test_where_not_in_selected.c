
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef char* LPCSTR ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char*,int *) ;
 int MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 scalar_t__ MsiViewFetch (int ,int *) ;
 scalar_t__ S_OK ;
 int check_record (int ,int,char*) ;
 int create_db () ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__ run_query (int ,int ,char*) ;

__attribute__((used)) static void test_where_not_in_selected(void)
{
    MSIHANDLE hdb = 0, rec, view;
    LPCSTR query;
    UINT r;

    hdb = create_db();
    ok( hdb, "failed to create db\n");

    r = run_query(hdb, 0,
            "CREATE TABLE `IESTable` ("
            "`Action` CHAR(64), "
            "`Condition` CHAR(64), "
            "`Sequence` LONG PRIMARY KEY `Sequence`)");
    ok( r == S_OK, "Cannot create IESTable table: %d\n", r);

    r = run_query(hdb, 0,
            "CREATE TABLE `CATable` ("
            "`Action` CHAR(64), "
            "`Type` LONG PRIMARY KEY `Type`)");
    ok( r == S_OK, "Cannot create CATable table: %d\n", r);

    r = run_query(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'clean', 'cond4', 4)");
    ok( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'depends', 'cond1', 1)");
    ok( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'build', 'cond2', 2)");
    ok( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'build2', 'cond6', 6)");
    ok( r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `IESTable` "
            "( `Action`, `Condition`, `Sequence`) "
            "VALUES ( 'build', 'cond3', 3)");
    ok(r == S_OK, "cannot add entry to IESTable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'build', 32)");
    ok(r == S_OK, "cannot add entry to CATable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'depends', 64)");
    ok(r == S_OK, "cannot add entry to CATable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'clean', 63)");
    ok(r == S_OK, "cannot add entry to CATable table:%d\n", r );

    r = run_query(hdb, 0, "INSERT INTO `CATable` "
            "( `Action`, `Type` ) "
            "VALUES ( 'build2', 34)");
    ok(r == S_OK, "cannot add entry to CATable table:%d\n", r );
    query = "Select IESTable.Condition from CATable, IESTable where "
            "CATable.Action = IESTable.Action and CATable.Type = 32";
    r = MsiDatabaseOpenViewA(hdb, query, &view);
    ok( r == ERROR_SUCCESS, "failed to open view: %d\n", r );

    r = MsiViewExecute(view, 0);
    ok( r == ERROR_SUCCESS, "failed to execute view: %d\n", r );

    r = MsiViewFetch(view, &rec);
    ok( r == ERROR_SUCCESS, "failed to fetch view: %d\n", r );

    ok( check_record( rec, 1, "cond2"), "wrong condition\n");

    MsiCloseHandle( rec );
    r = MsiViewFetch(view, &rec);
    ok( r == ERROR_SUCCESS, "failed to fetch view: %d\n", r );

    ok( check_record( rec, 1, "cond3"), "wrong condition\n");

    MsiCloseHandle( rec );
    MsiViewClose(view);
    MsiCloseHandle(view);

    MsiCloseHandle( hdb );
    DeleteFileA(msifile);
}
