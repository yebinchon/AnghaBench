
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyW (int ,int ,int *) ;
 scalar_t__ msi_reg_set_val_str (int ,int ,int ) ;

LONG msi_reg_set_subkey_val( HKEY hkey, LPCWSTR path, LPCWSTR name, LPCWSTR val )
{
    HKEY hsubkey = 0;
    LONG r;

    r = RegCreateKeyW( hkey, path, &hsubkey );
    if (r != ERROR_SUCCESS)
        return r;
    r = msi_reg_set_val_str( hsubkey, name, val );
    RegCloseKey( hsubkey );
    return r;
}
