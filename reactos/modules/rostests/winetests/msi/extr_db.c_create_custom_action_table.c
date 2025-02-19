
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,int ,char*) ;

__attribute__((used)) static UINT create_custom_action_table( MSIHANDLE hdb )
{
    UINT r = run_query( hdb, 0,
            "CREATE TABLE `CustomAction` ( "
            "`Action` CHAR(72) NOT NULL, "
            "`Type` SHORT NOT NULL, "
            "`Source` CHAR(72), "
            "`Target` CHAR(255) "
            "PRIMARY KEY `Action`)" );
    ok(r == ERROR_SUCCESS, "Failed to create CustomAction table: %u\n", r);
    return r;
}
