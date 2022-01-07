
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regsvr_metadatareader {struct reader_containers* containers; scalar_t__ requires_fixedsize; int supports_padding; int requires_fullstream; scalar_t__ version; scalar_t__ specversion; int * metadata_format; int * vendor; scalar_t__ friendlyname; scalar_t__ author; int * clsid; } ;
struct reader_containers {TYPE_1__* patterns; int * format; } ;
typedef char WCHAR ;
struct TYPE_2__ {int length; scalar_t__ data_offset; int const* mask; int const* pattern; int position; } ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int BYTE ;


 int CATID_WICMetadataReader ;
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
 int StringFromGUID2 (int *,char*,int) ;
 int author_valuename ;
 char* clsid_keyname ;
 int clsid_valuename ;
 char* containers_keyname ;
 int dataoffset_valuename ;
 int friendlyname_valuename ;
 char* instance_keyname ;
 int mask_valuename ;
 int metadataformat_valuename ;
 int pattern_valuename ;
 int position_valuename ;
 int requiresfixedsize_valuename ;
 int requiresfullstream_valuename ;
 int snprintfW (char*,int,char const*,int) ;
 int specversion_valuename ;
 int strlen (scalar_t__) ;
 int supportspadding_valuename ;
 int vendor_valuename ;
 int version_valuename ;

__attribute__((used)) static HRESULT register_metadatareaders(struct regsvr_metadatareader const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY readers_key;
    HKEY instance_key;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &coclass_key, ((void*)0));
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

        if (list->metadata_format) {
            StringFromGUID2(list->metadata_format, buf, 39);
     res = RegSetValueExW(clsid_key, metadataformat_valuename, 0, REG_SZ,
                                 (const BYTE*)buf, 78);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->version) {
     res = RegSetValueExA(clsid_key, version_valuename, 0, REG_SZ,
                                 (const BYTE*)list->version,
     strlen(list->version) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->specversion) {
     res = RegSetValueExA(clsid_key, specversion_valuename, 0, REG_SZ,
                                 (const BYTE*)list->version,
     strlen(list->version) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        res = RegSetValueExA(clsid_key, requiresfullstream_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->requires_fullstream, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        res = RegSetValueExA(clsid_key, supportspadding_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->supports_padding, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        if (list->requires_fixedsize) {
     res = RegSetValueExA(clsid_key, requiresfixedsize_valuename, 0, REG_DWORD,
                                 (const BYTE*)&list->requires_fixedsize, 4);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->containers) {
            HKEY containers_key;
            const struct reader_containers *container;

            res = RegCreateKeyExW(clsid_key, containers_keyname, 0, ((void*)0), 0,
                                  KEY_READ | KEY_WRITE, ((void*)0), &containers_key, ((void*)0));
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
            for (container=list->containers; container->format; ++container)
            {
                HKEY format_key;
                int i;
                StringFromGUID2(container->format, buf, 39);
                res = RegCreateKeyExW(containers_key, buf, 0, ((void*)0), 0,
                                      KEY_READ | KEY_WRITE, ((void*)0), &format_key, ((void*)0));
                if (res != ERROR_SUCCESS) break;

                for (i=0; container->patterns[i].length; i++)
                {
                    HKEY pattern_key;
                    static const WCHAR int_format[] = {'%','i',0};
                    snprintfW(buf, 39, int_format, i);
                    res = RegCreateKeyExW(format_key, buf, 0, ((void*)0), 0,
                                          KEY_READ | KEY_WRITE, ((void*)0), &pattern_key, ((void*)0));
                    if (res != ERROR_SUCCESS) break;
                    res = RegSetValueExA(pattern_key, position_valuename, 0, REG_DWORD,
                                         (const BYTE*)&container->patterns[i].position, 4);
                    if (res == ERROR_SUCCESS)
                        res = RegSetValueExA(pattern_key, pattern_valuename, 0, REG_BINARY,
                                             container->patterns[i].pattern,
                                             container->patterns[i].length);
                    if (res == ERROR_SUCCESS)
                        res = RegSetValueExA(pattern_key, mask_valuename, 0, REG_BINARY,
                                             container->patterns[i].mask,
                                             container->patterns[i].length);
                    if (res == ERROR_SUCCESS && container->patterns[i].data_offset)
                        res = RegSetValueExA(pattern_key, dataoffset_valuename, 0, REG_DWORD,
                                             (const BYTE*)&container->patterns[i].data_offset, 4);
                    RegCloseKey(pattern_key);
                }

                RegCloseKey(format_key);
            }
            RegCloseKey(containers_key);
        }

    error_close_clsid_key:
 RegCloseKey(clsid_key);
    }

error_close_coclass_key:
    RegCloseKey(instance_key);
    RegCloseKey(readers_key);
    RegCloseKey(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
