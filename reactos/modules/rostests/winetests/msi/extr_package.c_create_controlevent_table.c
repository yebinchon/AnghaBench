
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,char*) ;

__attribute__((used)) static UINT create_controlevent_table( MSIHANDLE hdb )
{
    UINT r = run_query(hdb,
            "CREATE TABLE `ControlEvent` ("
            "`Dialog_` CHAR(72) NOT NULL, "
            "`Control_` CHAR(50) NOT NULL, "
            "`Event` CHAR(50) NOT NULL, "
            "`Argument` CHAR(255) NOT NULL, "
            "`Condition` CHAR(255), "
            "`Ordering` SHORT "
            "PRIMARY KEY `Dialog_`, `Control_`, `Event`, `Argument`, `Condition`)");
    ok(r == ERROR_SUCCESS, "Failed to create ControlEvent table: %u\n", r);
    return r;
}
