
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NO_MORE_ITEMS ;
 int KEY_ENUMERATE_SUB_KEYS ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyA (int ,char*) ;
 scalar_t__ RegEnumKeyA (int ,int ,char*,int) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;

__attribute__((used)) static DWORD delete_key( HKEY hkey )
{
    char name[MAX_PATH];
    DWORD ret;

    if ((ret = RegOpenKeyExA( hkey, "", 0, KEY_ENUMERATE_SUB_KEYS, &hkey ))) return ret;
    while (!(ret = RegEnumKeyA(hkey, 0, name, sizeof(name))))
    {
        HKEY tmp;
        if (!(ret = RegOpenKeyExA( hkey, name, 0, KEY_ENUMERATE_SUB_KEYS, &tmp )))
        {
            ret = delete_key( tmp );
            RegCloseKey( tmp );
        }
        if (ret) break;
    }
    if (ret != ERROR_NO_MORE_ITEMS) return ret;
    RegDeleteKeyA( hkey, "" );
    RegCloseKey(hkey);
    return 0;
}
