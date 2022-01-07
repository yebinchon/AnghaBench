
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,char*) ;

__attribute__((used)) static UINT create_drlocator_table( MSIHANDLE hdb )
{
    UINT r = run_query( hdb,
            "CREATE TABLE `DrLocator` ("
            "`Signature_` CHAR(72) NOT NULL, "
            "`Parent` CHAR(72), "
            "`Path` CHAR(255), "
            "`Depth` SHORT "
            "PRIMARY KEY `Signature_`, `Parent`, `Path`)" );
    ok(r == ERROR_SUCCESS, "Failed to create DrLocator table: %u\n", r);
    return r;
}
