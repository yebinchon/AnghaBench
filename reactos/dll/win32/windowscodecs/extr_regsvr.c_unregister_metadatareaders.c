
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_metadatareader {int * clsid; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;


 int CATID_WICMetadataReader ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegDeleteTreeW (int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int,int *) ;
 int S_OK ;
 int StringFromGUID2 (int *,int *,int) ;
 int clsid_keyname ;
 int * instance_keyname ;

__attribute__((used)) static HRESULT unregister_metadatareaders(struct regsvr_metadatareader const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY readers_key;
    HKEY instance_key;

    res = RegOpenKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0,
   KEY_READ | KEY_WRITE, &coclass_key);
    if (res == ERROR_FILE_NOT_FOUND) return S_OK;

    if (res == ERROR_SUCCESS) {
        StringFromGUID2(&CATID_WICMetadataReader, buf, 39);
        res = RegCreateKeyExW(coclass_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &readers_key, ((void*)0));
        if (res == ERROR_SUCCESS)
        {
            res = RegCreateKeyExW(readers_key, instance_keyname, 0, ((void*)0), 0,
                KEY_READ | KEY_WRITE, ((void*)0), &instance_key, ((void*)0));
            if (res != ERROR_SUCCESS) goto error_close_coclass_key;
        }
        if (res != ERROR_SUCCESS)
            RegCloseKey(coclass_key);
    }
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->clsid; ++list) {
 StringFromGUID2(list->clsid, buf, 39);

 res = RegDeleteTreeW(coclass_key, buf);
 if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
 if (res != ERROR_SUCCESS) goto error_close_coclass_key;

 res = RegDeleteTreeW(instance_key, buf);
 if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
 if (res != ERROR_SUCCESS) goto error_close_coclass_key;
    }

error_close_coclass_key:
    RegCloseKey(instance_key);
    RegCloseKey(readers_key);
    RegCloseKey(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
