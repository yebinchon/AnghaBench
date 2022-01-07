
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,char*) ;

__attribute__((used)) static UINT create_dialog_table( MSIHANDLE hdb )
{
    UINT r = run_query(hdb,
            "CREATE TABLE `Dialog` ("
            "`Dialog` CHAR(72) NOT NULL, "
            "`HCentering` SHORT NOT NULL, "
            "`VCentering` SHORT NOT NULL, "
            "`Width` SHORT NOT NULL, "
            "`Height` SHORT NOT NULL, "
            "`Attributes` LONG, "
            "`Title` CHAR(128) LOCALIZABLE, "
            "`Control_First` CHAR(50) NOT NULL, "
            "`Control_Default` CHAR(50), "
            "`Control_Cancel` CHAR(50) "
            "PRIMARY KEY `Dialog`)");
    ok(r == ERROR_SUCCESS, "Failed to create Dialog table: %u\n", r);
    return r;
}
