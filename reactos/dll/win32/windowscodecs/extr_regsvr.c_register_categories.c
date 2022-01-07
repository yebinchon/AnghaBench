
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_category {int * clsid; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int BYTE ;


 int CLSID_WICImagingCategories ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,int ,int ,int ,int const*,int) ;
 int S_OK ;
 int StringFromGUID2 (int *,int *,int) ;
 int * clsid_keyname ;
 int clsid_valuename ;
 int * instance_keyname ;

__attribute__((used)) static HRESULT register_categories(const struct regsvr_category *list)
{
    LONG res;
    WCHAR buf[39];
    HKEY coclass_key, categories_key, instance_key;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0, ((void*)0), 0,
                          KEY_READ | KEY_WRITE, ((void*)0), &coclass_key, ((void*)0));
    if (res != ERROR_SUCCESS) return HRESULT_FROM_WIN32(res);

    StringFromGUID2(&CLSID_WICImagingCategories, buf, 39);
    res = RegCreateKeyExW(coclass_key, buf, 0, ((void*)0), 0,
                          KEY_READ | KEY_WRITE, ((void*)0), &categories_key, ((void*)0));
    if (res != ERROR_SUCCESS)
    {
        RegCloseKey(coclass_key);
        return HRESULT_FROM_WIN32(res);
    }

    res = RegCreateKeyExW(categories_key, instance_keyname, 0, ((void*)0), 0,
                          KEY_READ | KEY_WRITE, ((void*)0), &instance_key, ((void*)0));

    for (; res == ERROR_SUCCESS && list->clsid; list++)
    {
        HKEY instance_clsid_key;

        StringFromGUID2(list->clsid, buf, 39);
        res = RegCreateKeyExW(instance_key, buf, 0, ((void*)0), 0,
                              KEY_READ | KEY_WRITE, ((void*)0), &instance_clsid_key, ((void*)0));
        if (res == ERROR_SUCCESS)
        {
            res = RegSetValueExW(instance_clsid_key, clsid_valuename, 0, REG_SZ,
                                 (const BYTE *)buf, 78);
            RegCloseKey(instance_clsid_key);
        }
    }

    RegCloseKey(instance_key);
    RegCloseKey(categories_key);
    RegCloseKey(coclass_key);

    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
