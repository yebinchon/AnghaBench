
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_pixelformat {int bitsperpixel; size_t channelcount; int const** channelmasks; int supportsalpha; int numericrepresentation; scalar_t__ version; int * vendor; scalar_t__ friendlyname; scalar_t__ author; int * clsid; } ;
typedef char WCHAR ;
typedef size_t UINT ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int BYTE ;


 int CATID_WICPixelFormats ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_BINARY ;
 int REG_DWORD ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,int ,int ,int ,int const*,int) ;
 scalar_t__ RegSetValueExW (int ,char*,int ,int ,int const*,size_t) ;
 int S_OK ;
 int StringFromGUID2 (int *,char*,int) ;
 int author_valuename ;
 int bitsperpixel_valuename ;
 int channelcount_valuename ;
 char* channelmasks_keyname ;
 char* clsid_keyname ;
 char* clsid_valuename ;
 int friendlyname_valuename ;
 char* instance_keyname ;
 int numericrepresentation_valuename ;
 int sprintfW (char*,char const*,size_t) ;
 int strlen (scalar_t__) ;
 int supportstransparency_valuename ;
 char* vendor_valuename ;
 int version_valuename ;

__attribute__((used)) static HRESULT register_pixelformats(struct regsvr_pixelformat const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY formats_key;
    HKEY instance_key;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0, ((void*)0), 0,
                          KEY_READ | KEY_WRITE, ((void*)0), &coclass_key, ((void*)0));
    if (res == ERROR_SUCCESS) {
        StringFromGUID2(&CATID_WICPixelFormats, buf, 39);
        res = RegCreateKeyExW(coclass_key, buf, 0, ((void*)0), 0,
                              KEY_READ | KEY_WRITE, ((void*)0), &formats_key, ((void*)0));
        if (res == ERROR_SUCCESS)
        {
            res = RegCreateKeyExW(formats_key, instance_keyname, 0, ((void*)0), 0,
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

        res = RegSetValueExA(clsid_key, bitsperpixel_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->bitsperpixel, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        res = RegSetValueExA(clsid_key, channelcount_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->channelcount, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        res = RegSetValueExA(clsid_key, numericrepresentation_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->numericrepresentation, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        res = RegSetValueExA(clsid_key, supportstransparency_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->supportsalpha, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        if (list->channelmasks) {
            static const WCHAR valuename_format[] = {'%','d',0};
            HKEY masks_key;
            UINT i, mask_size;
            WCHAR mask_valuename[11];

            mask_size = (list->bitsperpixel + 7)/8;

            res = RegCreateKeyExW(clsid_key, channelmasks_keyname, 0, ((void*)0), 0,
                                  KEY_READ | KEY_WRITE, ((void*)0), &masks_key, ((void*)0));
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
            for (i=0; i < list->channelcount; i++)
            {
                sprintfW(mask_valuename, valuename_format, i);
                res = RegSetValueExW(masks_key, mask_valuename, 0, REG_BINARY,
                                     list->channelmasks[i], mask_size);
                if (res != ERROR_SUCCESS) break;
            }
            RegCloseKey(masks_key);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

    error_close_clsid_key:
        RegCloseKey(clsid_key);
    }

error_close_coclass_key:
    RegCloseKey(instance_key);
    RegCloseKey(formats_key);
    RegCloseKey(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
