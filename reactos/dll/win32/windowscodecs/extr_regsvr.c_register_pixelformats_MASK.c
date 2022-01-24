#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct regsvr_pixelformat {int bitsperpixel; size_t channelcount; int /*<<< orphan*/  const** channelmasks; int /*<<< orphan*/  supportsalpha; int /*<<< orphan*/  numericrepresentation; scalar_t__ version; int /*<<< orphan*/ * vendor; scalar_t__ friendlyname; scalar_t__ author; int /*<<< orphan*/ * clsid; } ;
typedef  char WCHAR ;
typedef  size_t UINT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CATID_WICPixelFormats ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  author_valuename ; 
 int /*<<< orphan*/  bitsperpixel_valuename ; 
 int /*<<< orphan*/  channelcount_valuename ; 
 char* channelmasks_keyname ; 
 char* clsid_keyname ; 
 char* clsid_valuename ; 
 int /*<<< orphan*/  friendlyname_valuename ; 
 char* instance_keyname ; 
 int /*<<< orphan*/  numericrepresentation_valuename ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  supportstransparency_valuename ; 
 char* vendor_valuename ; 
 int /*<<< orphan*/  version_valuename ; 

__attribute__((used)) static HRESULT FUNC8(struct regsvr_pixelformat const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY formats_key;
    HKEY instance_key;

    res = FUNC2(HKEY_CLASSES_ROOT, clsid_keyname, 0, NULL, 0,
                          KEY_READ | KEY_WRITE, NULL, &coclass_key, NULL);
    if (res == ERROR_SUCCESS)  {
        FUNC5(&CATID_WICPixelFormats, buf, 39);
        res = FUNC2(coclass_key, buf, 0, NULL, 0,
                              KEY_READ | KEY_WRITE, NULL, &formats_key, NULL);
        if (res == ERROR_SUCCESS)
        {
            res = FUNC2(formats_key, instance_keyname, 0, NULL, 0,
                              KEY_READ | KEY_WRITE, NULL, &instance_key, NULL);
            if (res != ERROR_SUCCESS) goto error_close_coclass_key;
        }
        if (res != ERROR_SUCCESS)
            FUNC1(coclass_key);
    }
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->clsid; ++list) {
        HKEY clsid_key;
        HKEY instance_clsid_key;

        FUNC5(list->clsid, buf, 39);
        res = FUNC2(coclass_key, buf, 0, NULL, 0,
                              KEY_READ | KEY_WRITE, NULL, &clsid_key, NULL);
        if (res != ERROR_SUCCESS) goto error_close_coclass_key;

        FUNC5(list->clsid, buf, 39);
        res = FUNC2(instance_key, buf, 0, NULL, 0,
                              KEY_READ | KEY_WRITE, NULL, &instance_clsid_key, NULL);
        if (res == ERROR_SUCCESS) {
            res = FUNC4(instance_clsid_key, clsid_valuename, 0, REG_SZ,
                                 (const BYTE*)buf, 78);
            FUNC1(instance_clsid_key);
        }
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        if (list->author) {
            res = FUNC3(clsid_key, author_valuename, 0, REG_SZ,
                                 (const BYTE*)list->author,
                                 FUNC7(list->author) + 1);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->friendlyname) {
            res = FUNC3(clsid_key, friendlyname_valuename, 0, REG_SZ,
                                 (const BYTE*)list->friendlyname,
                                 FUNC7(list->friendlyname) + 1);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->vendor) {
            FUNC5(list->vendor, buf, 39);
            res = FUNC4(clsid_key, vendor_valuename, 0, REG_SZ,
                                 (const BYTE*)buf, 78);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->version) {
            res = FUNC3(clsid_key, version_valuename, 0, REG_SZ,
                                 (const BYTE*)list->version,
                                 FUNC7(list->version) + 1);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        res = FUNC3(clsid_key, bitsperpixel_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->bitsperpixel, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        res = FUNC3(clsid_key, channelcount_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->channelcount, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        res = FUNC3(clsid_key, numericrepresentation_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->numericrepresentation, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        res = FUNC3(clsid_key, supportstransparency_valuename, 0, REG_DWORD,
                             (const BYTE*)&list->supportsalpha, 4);
        if (res != ERROR_SUCCESS) goto error_close_clsid_key;

        if (list->channelmasks) {
            static const WCHAR valuename_format[] = {'%','d',0};
            HKEY masks_key;
            UINT i, mask_size;
            WCHAR mask_valuename[11];

            mask_size = (list->bitsperpixel + 7)/8;

            res = FUNC2(clsid_key, channelmasks_keyname, 0, NULL, 0,
                                  KEY_READ | KEY_WRITE, NULL, &masks_key, NULL);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
            for (i=0; i < list->channelcount; i++)
            {
                FUNC6(mask_valuename, valuename_format, i);
                res = FUNC4(masks_key, mask_valuename, 0, REG_BINARY,
                                     list->channelmasks[i], mask_size);
                if (res != ERROR_SUCCESS) break;
            }
            FUNC1(masks_key);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

    error_close_clsid_key:
        FUNC1(clsid_key);
    }

error_close_coclass_key:
    FUNC1(instance_key);
    FUNC1(formats_key);
    FUNC1(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}