
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;


 int TRACE (char*) ;
 int msi_get_property_int (int ,int ,int ) ;
 int msi_set_property (int ,int ,int ,int) ;
 int szAdminUser ;
 int szAllUsers ;
 int szOne ;

void msi_adjust_privilege_properties( MSIPACKAGE *package )
{

    if (msi_get_property_int( package->db, szAllUsers, 0 ) == 2)
    {
        TRACE("resetting ALLUSERS property from 2 to 1\n");
        msi_set_property( package->db, szAllUsers, szOne, -1 );
    }
    msi_set_property( package->db, szAdminUser, szOne, -1 );
}
