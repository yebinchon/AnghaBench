
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int REGSAM ;
typedef int * LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 int RegCloseKey (int ) ;
 int RegDeleteTreeW (int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int,int *) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int squash_guid (int *,int *) ;
 int szInstaller_LocalClassesFeatures ;

UINT MSIREG_DeleteLocalClassesFeaturesKey(LPCWSTR szProductCode)
{
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    WCHAR squashed_pc[SQUASHED_GUID_SIZE];
    HKEY hkey;
    LONG r;

    if (!squash_guid( szProductCode, squashed_pc )) return ERROR_FUNCTION_FAILED;
    TRACE("%s squashed %s\n", debugstr_w(szProductCode), debugstr_w(squashed_pc));

    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, szInstaller_LocalClassesFeatures, 0, access, &hkey)) return ERROR_SUCCESS;
    r = RegDeleteTreeW( hkey, squashed_pc );
    RegCloseKey(hkey);
    return r;
}
