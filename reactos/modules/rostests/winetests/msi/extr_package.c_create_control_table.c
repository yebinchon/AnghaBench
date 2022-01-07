
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,char*) ;

__attribute__((used)) static UINT create_control_table( MSIHANDLE hdb )
{
    UINT r = run_query(hdb,
            "CREATE TABLE `Control` ("
            "`Dialog_` CHAR(72) NOT NULL, "
            "`Control` CHAR(50) NOT NULL, "
            "`Type` CHAR(20) NOT NULL, "
            "`X` SHORT NOT NULL, "
            "`Y` SHORT NOT NULL, "
            "`Width` SHORT NOT NULL, "
            "`Height` SHORT NOT NULL, "
            "`Attributes` LONG, "
            "`Property` CHAR(50), "
            "`Text` CHAR(0) LOCALIZABLE, "
            "`Control_Next` CHAR(50), "
            "`Help` CHAR(255) LOCALIZABLE "
            "PRIMARY KEY `Dialog_`, `Control`)");
    ok(r == ERROR_SUCCESS, "Failed to create Control table: %u\n", r);
    return r;
}
