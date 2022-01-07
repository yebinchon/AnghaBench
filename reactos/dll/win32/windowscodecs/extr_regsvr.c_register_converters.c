
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_converter {int const* const clsid; int const* const vendor; int** formats; scalar_t__ version; scalar_t__ friendlyname; scalar_t__ author; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int GUID ;
typedef int BYTE ;


 int const CATID_WICFormatConverters ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,int ,int ,int ,int const*,scalar_t__) ;
 scalar_t__ RegSetValueExW (int ,int ,int ,int ,int const*,int) ;
 int S_OK ;
 int StringFromGUID2 (int const* const,int *,int) ;
 int author_valuename ;
 int * clsid_keyname ;
 int clsid_valuename ;
 int friendlyname_valuename ;
 int * instance_keyname ;
 int * pixelformats_keyname ;
 scalar_t__ strlen (scalar_t__) ;
 int vendor_valuename ;
 int version_valuename ;

__attribute__((used)) static HRESULT register_converters(struct regsvr_converter const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY converters_key;
    HKEY instance_key;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &coclass_key, ((void*)0));
    if (res == ERROR_SUCCESS) {
        StringFromGUID2(&CATID_WICFormatConverters, buf, 39);
        res = RegCreateKeyExW(coclass_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &converters_key, ((void*)0));
        if (res == ERROR_SUCCESS)
        {
            res = RegCreateKeyExW(converters_key, instance_keyname, 0, ((void*)0), 0,
                KEY_READ | KEY_WRITE, ((void*)0), &instance_key, ((void*)0));
            if (res != ERROR_SUCCESS) goto error_close_coclass_key;
        }
        if (res != ERROR_SUCCESS)
            RegCloseKey(coclass_key);
    }
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->clsid; ++list) {
 HKEY clsid_key;
 HKEY instance_clsid_key;

 StringFromGUID2(list->clsid, buf, 39);
 res = RegCreateKeyExW(coclass_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &clsid_key, ((void*)0));
 if (res != ERROR_SUCCESS) goto error_close_coclass_key;

 StringFromGUID2(list->clsid, buf, 39);
 res = RegCreateKeyExW(instance_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &instance_clsid_key, ((void*)0));
 if (res == ERROR_SUCCESS) {
     res = RegSetValueExW(instance_clsid_key, clsid_valuename, 0, REG_SZ,
                                 (const BYTE*)buf, 78);
     RegCloseKey(instance_clsid_key);
 }
 if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        if (list->author) {
     res = RegSetValueExA(clsid_key, author_valuename, 0, REG_SZ,
                                 (const BYTE*)list->author,
     strlen(list->author) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->friendlyname) {
     res = RegSetValueExA(clsid_key, friendlyname_valuename, 0, REG_SZ,
                                 (const BYTE*)list->friendlyname,
     strlen(list->friendlyname) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->vendor) {
            StringFromGUID2(list->vendor, buf, 39);
     res = RegSetValueExW(clsid_key, vendor_valuename, 0, REG_SZ,
                                 (const BYTE*)buf, 78);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->version) {
     res = RegSetValueExA(clsid_key, version_valuename, 0, REG_SZ,
                                 (const BYTE*)list->version,
     strlen(list->version) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->formats) {
            HKEY formats_key;
            GUID const * const *format;

            res = RegCreateKeyExW(clsid_key, pixelformats_keyname, 0, ((void*)0), 0,
                                  KEY_READ | KEY_WRITE, ((void*)0), &formats_key, ((void*)0));
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
            for (format=list->formats; *format; ++format)
            {
                HKEY format_key;
                StringFromGUID2(*format, buf, 39);
                res = RegCreateKeyExW(formats_key, buf, 0, ((void*)0), 0,
                                      KEY_READ | KEY_WRITE, ((void*)0), &format_key, ((void*)0));
                if (res != ERROR_SUCCESS) break;
                RegCloseKey(format_key);
            }
            RegCloseKey(formats_key);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

    error_close_clsid_key:
 RegCloseKey(clsid_key);
    }

error_close_coclass_key:
    RegCloseKey(instance_key);
    RegCloseKey(converters_key);
    RegCloseKey(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
