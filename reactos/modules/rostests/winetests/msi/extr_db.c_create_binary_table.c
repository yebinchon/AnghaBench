
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,int ,char*) ;

__attribute__((used)) static UINT create_binary_table( MSIHANDLE hdb )
{
    UINT r = run_query( hdb, 0,
           "CREATE TABLE `Binary` ( "
            "`Name` CHAR(72) NOT NULL, "
            "`Data` CHAR(72) NOT NULL "
            "PRIMARY KEY `Name` )" );
    ok(r == ERROR_SUCCESS, "Failed to create Binary table: %u\n", r);
    return r;
}
