
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,char*) ;

__attribute__((used)) static UINT create_launchcondition_table( MSIHANDLE hdb )
{
    UINT r = run_query( hdb,
            "CREATE TABLE `LaunchCondition` ("
            "`Condition` CHAR(255) NOT NULL, "
            "`Description` CHAR(255) NOT NULL "
            "PRIMARY KEY `Condition`)" );
    ok(r == ERROR_SUCCESS, "Failed to create LaunchCondition table: %u\n", r);
    return r;
}
