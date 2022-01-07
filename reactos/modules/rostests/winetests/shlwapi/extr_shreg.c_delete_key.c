
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_ALL_ACCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,int ,int ,int ,int *) ;
 scalar_t__ SHDeleteKeyA (int ,int ) ;

__attribute__((used)) static DWORD delete_key( HKEY hkey, LPCSTR parent, LPCSTR keyname )
{
    HKEY parentKey;
    DWORD ret;

    RegCloseKey(hkey);


    ret = RegOpenKeyExA( HKEY_CURRENT_USER, parent, 0, KEY_ALL_ACCESS, &parentKey);
    if (ret != ERROR_SUCCESS)
        return ret;

    ret = SHDeleteKeyA( parentKey, keyname );
    RegCloseKey(parentKey);

    return ret;
}
