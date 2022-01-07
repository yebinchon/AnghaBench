
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int db; int platform; int ProductCode; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int HKEY ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ MSIREG_OpenUninstallKey (int ,int ,int *,int ) ;
 int RegCloseKey (int ) ;
 int msi_set_property (int ,int ,int ,int) ;
 int szInstalled ;
 int szOne ;

__attribute__((used)) static UINT set_installed_prop( MSIPACKAGE *package )
{
    HKEY hkey;
    UINT r;

    if (!package->ProductCode) return ERROR_FUNCTION_FAILED;

    r = MSIREG_OpenUninstallKey( package->ProductCode, package->platform, &hkey, FALSE );
    if (r == ERROR_SUCCESS)
    {
        RegCloseKey( hkey );
        msi_set_property( package->db, szInstalled, szOne, -1 );
    }
    return r;
}
