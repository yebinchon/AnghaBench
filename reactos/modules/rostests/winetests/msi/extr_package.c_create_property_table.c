
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,char*) ;

__attribute__((used)) static UINT create_property_table( MSIHANDLE hdb )
{
    UINT r = run_query( hdb,
            "CREATE TABLE `Property` ("
            "`Property` CHAR(72) NOT NULL, "
            "`Value` CHAR(0) "
            "PRIMARY KEY `Property`)" );
    ok(r == ERROR_SUCCESS, "Failed to create Property table: %u\n", r);
    return r;
}
