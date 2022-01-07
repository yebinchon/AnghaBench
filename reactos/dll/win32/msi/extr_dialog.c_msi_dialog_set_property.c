
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_SUCCESS ;
 int TRUE ;
 int msi_reset_folders (TYPE_1__*,int ) ;
 scalar_t__ msi_set_property (int ,int ,int ,int) ;
 int strcmpW (int ,int ) ;
 int szSourceDir ;

__attribute__((used)) static void msi_dialog_set_property( MSIPACKAGE *package, LPCWSTR property, LPCWSTR value )
{
    UINT r = msi_set_property( package->db, property, value, -1 );
    if (r == ERROR_SUCCESS && !strcmpW( property, szSourceDir ))
        msi_reset_folders( package, TRUE );
}
