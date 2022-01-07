
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regsvr_decoder {int const* const clsid; int const* const vendor; int const* const container_format; int** formats; TYPE_1__* patterns; scalar_t__ extensions; scalar_t__ mimetypes; scalar_t__ version; scalar_t__ friendlyname; scalar_t__ author; } ;
typedef char WCHAR ;
struct TYPE_2__ {int length; int endofstream; int const* mask; int const* pattern; int position; } ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int GUID ;
typedef int BYTE ;


 int const CATID_WICBitmapDecoders ;
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
 scalar_t__ RegSetValueExW (int ,int ,int ,int ,int const*,int) ;
 int S_OK ;
 int StringFromGUID2 (int const* const,char*,int) ;
 int author_valuename ;
 char* clsid_keyname ;
 int clsid_valuename ;
 int containerformat_valuename ;
 int endofstream_valuename ;
 int extensions_valuename ;
 char* formats_keyname ;
 int friendlyname_valuename ;
 char* instance_keyname ;
 int length_valuename ;
 int mask_valuename ;
 int mimetypes_valuename ;
 int pattern_valuename ;
 char* patterns_keyname ;
 int position_valuename ;
 int snprintfW (char*,int,char const*,int) ;
 int strlen (scalar_t__) ;
 int vendor_valuename ;
 int version_valuename ;

__attribute__((used)) static HRESULT register_decoders(struct regsvr_decoder const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY decoders_key;
    HKEY instance_key;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &coclass_key, ((void*)0));
    if (res == ERROR_SUCCESS) {
        StringFromGUID2(&CATID_WICBitmapDecoders, buf, 39);
        res = RegCreateKeyExW(coclass_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &decoders_key, ((void*)0));
        if (res == ERROR_SUCCESS)
        {
            res = RegCreateKeyExW(decoders_key, instance_keyname, 0, ((void*)0), 0,
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

        if (list->container_format) {
            StringFromGUID2(list->container_format, buf, 39);
     res = RegSetValueExW(clsid_key, containerformat_valuename, 0, REG_SZ,
                                 (const BYTE*)buf, 78);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->version) {
     res = RegSetValueExA(clsid_key, version_valuename, 0, REG_SZ,
                                 (const BYTE*)list->version,
     strlen(list->version) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->mimetypes) {
     res = RegSetValueExA(clsid_key, mimetypes_valuename, 0, REG_SZ,
                                 (const BYTE*)list->mimetypes,
     strlen(list->mimetypes) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->extensions) {
     res = RegSetValueExA(clsid_key, extensions_valuename, 0, REG_SZ,
                                 (const BYTE*)list->extensions,
     strlen(list->extensions) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->formats) {
            HKEY formats_key;
            GUID const * const *format;

            res = RegCreateKeyExW(clsid_key, formats_keyname, 0, ((void*)0), 0,
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

        if (list->patterns) {
            HKEY patterns_key;
            int i;

            res = RegCreateKeyExW(clsid_key, patterns_keyname, 0, ((void*)0), 0,
                                  KEY_READ | KEY_WRITE, ((void*)0), &patterns_key, ((void*)0));
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
            for (i=0; list->patterns[i].length; i++)
            {
                HKEY pattern_key;
                static const WCHAR int_format[] = {'%','i',0};
                snprintfW(buf, 39, int_format, i);
                res = RegCreateKeyExW(patterns_key, buf, 0, ((void*)0), 0,
                                      KEY_READ | KEY_WRITE, ((void*)0), &pattern_key, ((void*)0));
                if (res != ERROR_SUCCESS) break;
         res = RegSetValueExA(pattern_key, length_valuename, 0, REG_DWORD,
                                     (const BYTE*)&list->patterns[i].length, 4);
                if (res == ERROR_SUCCESS)
             res = RegSetValueExA(pattern_key, position_valuename, 0, REG_DWORD,
                                         (const BYTE*)&list->patterns[i].position, 4);
                if (res == ERROR_SUCCESS)
             res = RegSetValueExA(pattern_key, pattern_valuename, 0, REG_BINARY,
             list->patterns[i].pattern,
             list->patterns[i].length);
                if (res == ERROR_SUCCESS)
             res = RegSetValueExA(pattern_key, mask_valuename, 0, REG_BINARY,
             list->patterns[i].mask,
             list->patterns[i].length);
                if (res == ERROR_SUCCESS)
             res = RegSetValueExA(pattern_key, endofstream_valuename, 0, REG_DWORD,
                                         (const BYTE*)&list->patterns[i].endofstream, 4);
                RegCloseKey(pattern_key);
            }
            RegCloseKey(patterns_key);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

    error_close_clsid_key:
 RegCloseKey(clsid_key);
    }

error_close_coclass_key:
    RegCloseKey(instance_key);
    RegCloseKey(decoders_key);
    RegCloseKey(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
