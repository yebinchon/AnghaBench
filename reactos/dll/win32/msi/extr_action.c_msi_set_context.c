
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Context; int db; int ProductCode; } ;
typedef TYPE_1__ MSIPACKAGE ;


 scalar_t__ ERROR_SUCCESS ;
 int MSIINSTALLCONTEXT_MACHINE ;
 int MSIINSTALLCONTEXT_USERUNMANAGED ;
 int msi_get_property_int (int ,int ,int ) ;
 scalar_t__ msi_locate_product (int ,int *) ;
 int szAllUsers ;

UINT msi_set_context(MSIPACKAGE *package)
{
    UINT r = msi_locate_product( package->ProductCode, &package->Context );
    if (r != ERROR_SUCCESS)
    {
        int num = msi_get_property_int( package->db, szAllUsers, 0 );
        if (num == 1 || num == 2)
            package->Context = MSIINSTALLCONTEXT_MACHINE;
        else
            package->Context = MSIINSTALLCONTEXT_USERUNMANAGED;
    }
    return ERROR_SUCCESS;
}
