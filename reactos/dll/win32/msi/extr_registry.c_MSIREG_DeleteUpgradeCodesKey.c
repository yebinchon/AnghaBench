
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const WCHAR ;
typedef int UINT ;
typedef int REGSAM ;
typedef int LONG ;
typedef int HKEY ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 int RegCloseKey (int ) ;
 int RegDeleteTreeW (int ,int const*) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int,int *) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int const*) ;
 int squash_guid (int const*,int const*) ;
 int szInstaller_UpgradeCodes ;

UINT MSIREG_DeleteUpgradeCodesKey( const WCHAR *code )
{
    WCHAR squashed_code[SQUASHED_GUID_SIZE];
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    HKEY hkey;
    LONG ret;

    if (!squash_guid( code, squashed_code )) return ERROR_FUNCTION_FAILED;
    TRACE( "%s squashed %s\n", debugstr_w(code), debugstr_w(squashed_code) );

    if (RegOpenKeyExW( HKEY_LOCAL_MACHINE, szInstaller_UpgradeCodes, 0, access, &hkey )) return ERROR_SUCCESS;
    ret = RegDeleteTreeW( hkey, squashed_code );
    RegCloseKey( hkey );
    return ret;
}
