
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_category {int * clsid; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;


 int CLSID_WICImagingCategories ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteTreeW (int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int,int *) ;
 int S_OK ;
 int StringFromGUID2 (int *,int *,int) ;
 int * clsid_keyname ;
 int * instance_keyname ;

__attribute__((used)) static HRESULT unregister_categories(const struct regsvr_category *list)
{
    LONG res;
    WCHAR buf[39];
    HKEY coclass_key, categories_key, instance_key;

    res = RegOpenKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0,
                        KEY_READ | KEY_WRITE, &coclass_key);
    if (res != ERROR_SUCCESS) return HRESULT_FROM_WIN32(res);

    StringFromGUID2(&CLSID_WICImagingCategories, buf, 39);
    res = RegOpenKeyExW(coclass_key, buf, 0,
                        KEY_READ | KEY_WRITE, &categories_key);
    if (res != ERROR_SUCCESS)
    {
        if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
        RegCloseKey(coclass_key);
        return HRESULT_FROM_WIN32(res);
    }

    res = RegOpenKeyExW(categories_key, instance_keyname, 0,
                          KEY_READ | KEY_WRITE, &instance_key);

    for (; res == ERROR_SUCCESS && list->clsid; list++)
    {
        StringFromGUID2(list->clsid, buf, 39);
        res = RegDeleteTreeW(instance_key, buf);
    }

    RegCloseKey(instance_key);
    RegCloseKey(categories_key);

    StringFromGUID2(&CLSID_WICImagingCategories, buf, 39);
    res = RegDeleteTreeW(coclass_key, buf);

    RegCloseKey(coclass_key);

    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
