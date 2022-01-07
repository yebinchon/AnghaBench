
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NO_MORE_ITEMS ;
 int KEY_ENUMERATE_SUB_KEYS ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyW (int ,char*) ;
 scalar_t__ RegEnumKeyW (int ,int ,int *,int ) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 int _countof (int *) ;

__attribute__((used)) static DWORD delete_key(HKEY hkey)
{
    WCHAR name[MAX_PATH];
    DWORD ret;

    while (!(ret = RegEnumKeyW(hkey, 0, name, _countof(name))))
    {
        HKEY tmp;
        if (!(ret = RegOpenKeyExW(hkey, name, 0, KEY_ENUMERATE_SUB_KEYS, &tmp)))
        {
            ret = delete_key(tmp);
        }
        if (ret)
            break;
    }
    if (ret == ERROR_NO_MORE_ITEMS)
    {
        RegDeleteKeyW(hkey, L"");
        ret = 0;
    }
    RegCloseKey(hkey);
    return ret;
}
