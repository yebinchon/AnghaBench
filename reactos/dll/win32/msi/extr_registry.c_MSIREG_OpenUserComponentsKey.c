
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int REGSAM ;
typedef int * LPCWSTR ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 scalar_t__ RegCreateKeyW (int ,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int,int *) ;
 scalar_t__ RegOpenKeyW (int ,int *,int *) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int squash_guid (int *,int *) ;
 int strcatW (int *,int *) ;
 int strcpyW (int *,int ) ;
 int szInstaller_Components ;
 int szUserComponents ;

UINT MSIREG_OpenUserComponentsKey(LPCWSTR szComponent, HKEY *key, BOOL create)
{
    WCHAR squashed_cc[SQUASHED_GUID_SIZE], keypath[0x200];
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    UINT ret;

    if (!squash_guid( szComponent, squashed_cc)) return ERROR_FUNCTION_FAILED;
    TRACE("%s squashed %s\n", debugstr_w(szComponent), debugstr_w(squashed_cc));

    strcpyW(keypath, szUserComponents);
    strcatW( keypath, squashed_cc );

    if (create) return RegCreateKeyW(HKEY_CURRENT_USER, keypath, key);
    ret = RegOpenKeyW(HKEY_CURRENT_USER, keypath, key);
    if (ret != ERROR_FILE_NOT_FOUND) return ret;

    strcpyW(keypath, szInstaller_Components);
    strcatW( keypath, squashed_cc );
    return RegOpenKeyExW( HKEY_LOCAL_MACHINE, keypath, 0, access, key );
}
