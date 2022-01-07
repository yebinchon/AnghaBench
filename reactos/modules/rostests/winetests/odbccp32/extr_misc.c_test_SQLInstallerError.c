
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RETCODE ;


 int SQLGetInstalledDrivers (int ,int ,int ) ;
 scalar_t__ SQLInstallerError (int,int *,int *,int ,int *) ;
 scalar_t__ SQL_ERROR ;
 scalar_t__ SQL_NO_DATA ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SQLInstallerError(void)
{
    RETCODE sql_ret;


    sql_ret = SQLInstallerError(0, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(sql_ret == SQL_ERROR, "SQLInstallerError(0...) failed with %d instead of SQL_ERROR\n", sql_ret);




    sql_ret = SQLInstallerError(65535, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(sql_ret == SQL_NO_DATA, "SQLInstallerError(>8...) failed with %d instead of SQL_NO_DATA\n", sql_ret);


    ok(!SQLGetInstalledDrivers(0, 0, 0), "Failed to force an error for testing\n");
    sql_ret = SQLInstallerError(2, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(sql_ret == SQL_NO_DATA, "Too many errors when forcing an error for testing\n");


    sql_ret = SQLInstallerError(1, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(sql_ret == SQL_SUCCESS_WITH_INFO, "SQLInstallerError(null addresses) failed with %d instead of SQL_SUCCESS_WITH_INFO\n", sql_ret);
}
