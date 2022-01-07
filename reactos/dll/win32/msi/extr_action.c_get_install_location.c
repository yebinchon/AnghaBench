
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int Context; int ProductCode; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int HKEY ;


 int FALSE ;
 scalar_t__ MSIREG_OpenInstallProps (int ,int ,int *,int *,int ) ;
 int RegCloseKey (int ) ;
 int msi_free (int *) ;
 int * msi_reg_get_val_str (int ,int ) ;
 int szInstallLocation ;

__attribute__((used)) static WCHAR *get_install_location( MSIPACKAGE *package )
{
    HKEY hkey;
    WCHAR *path;

    if (!package->ProductCode) return ((void*)0);
    if (MSIREG_OpenInstallProps( package->ProductCode, package->Context, ((void*)0), &hkey, FALSE )) return ((void*)0);
    if ((path = msi_reg_get_val_str( hkey, szInstallLocation )) && !path[0])
    {
        msi_free( path );
        path = ((void*)0);
    }
    RegCloseKey( hkey );
    return path;
}
