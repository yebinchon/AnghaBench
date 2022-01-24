#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regsvr_decoder {int const* const clsid; int const* const vendor; int const* const container_format; int** formats; TYPE_1__* patterns; scalar_t__ extensions; scalar_t__ mimetypes; scalar_t__ version; scalar_t__ friendlyname; scalar_t__ author; } ;
typedef  char WCHAR ;
struct TYPE_2__ {int length; int /*<<< orphan*/  endofstream; int /*<<< orphan*/  const* mask; int /*<<< orphan*/  const* pattern; int /*<<< orphan*/  position; } ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int const CATID_WICBitmapDecoders ; 
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
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int const* const,char*,int) ; 
 int /*<<< orphan*/  author_valuename ; 
 char* clsid_keyname ; 
 int /*<<< orphan*/  clsid_valuename ; 
 int /*<<< orphan*/  containerformat_valuename ; 
 int /*<<< orphan*/  endofstream_valuename ; 
 int /*<<< orphan*/  extensions_valuename ; 
 char* formats_keyname ; 
 int /*<<< orphan*/  friendlyname_valuename ; 
 char* instance_keyname ; 
 int /*<<< orphan*/  length_valuename ; 
 int /*<<< orphan*/  mask_valuename ; 
 int /*<<< orphan*/  mimetypes_valuename ; 
 int /*<<< orphan*/  pattern_valuename ; 
 char* patterns_keyname ; 
 int /*<<< orphan*/  position_valuename ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  vendor_valuename ; 
 int /*<<< orphan*/  version_valuename ; 

__attribute__((used)) static HRESULT FUNC8(struct regsvr_decoder const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY decoders_key;
    HKEY instance_key;

    res = FUNC2(HKEY_CLASSES_ROOT, clsid_keyname, 0, NULL, 0,
			  KEY_READ | KEY_WRITE, NULL, &coclass_key, NULL);
    if (res == ERROR_SUCCESS)  {
        FUNC5(&CATID_WICBitmapDecoders, buf, 39);
        res = FUNC2(coclass_key, buf, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &decoders_key, NULL);
        if (res == ERROR_SUCCESS)
        {
            res = FUNC2(decoders_key, instance_keyname, 0, NULL, 0,
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

        if (list->container_format) {
            FUNC5(list->container_format, buf, 39);
	    res = FUNC4(clsid_key, containerformat_valuename, 0, REG_SZ,
                                 (const BYTE*)buf, 78);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->version) {
	    res = FUNC3(clsid_key, version_valuename, 0, REG_SZ,
                                 (const BYTE*)list->version,
				 FUNC7(list->version) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->mimetypes) {
	    res = FUNC3(clsid_key, mimetypes_valuename, 0, REG_SZ,
                                 (const BYTE*)list->mimetypes,
				 FUNC7(list->mimetypes) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->extensions) {
	    res = FUNC3(clsid_key, extensions_valuename, 0, REG_SZ,
                                 (const BYTE*)list->extensions,
				 FUNC7(list->extensions) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->formats) {
            HKEY formats_key;
            GUID const * const *format;

            res = FUNC2(clsid_key, formats_keyname, 0, NULL, 0,
                                  KEY_READ | KEY_WRITE, NULL, &formats_key, NULL);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
            for (format=list->formats; *format; ++format)
            {
                HKEY format_key;
                FUNC5(*format, buf, 39);
                res = FUNC2(formats_key, buf, 0, NULL, 0,
                                      KEY_READ | KEY_WRITE, NULL, &format_key, NULL);
                if (res != ERROR_SUCCESS) break;
                FUNC1(format_key);
            }
            FUNC1(formats_key);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->patterns) {
            HKEY patterns_key;
            int i;

            res = FUNC2(clsid_key, patterns_keyname, 0, NULL, 0,
                                  KEY_READ | KEY_WRITE, NULL, &patterns_key, NULL);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
            for (i=0; list->patterns[i].length; i++)
            {
                HKEY pattern_key;
                static const WCHAR int_format[] = {'%','i',0};
                FUNC6(buf, 39, int_format, i);
                res = FUNC2(patterns_key, buf, 0, NULL, 0,
                                      KEY_READ | KEY_WRITE, NULL, &pattern_key, NULL);
                if (res != ERROR_SUCCESS) break;
	        res = FUNC3(pattern_key, length_valuename, 0, REG_DWORD,
                                     (const BYTE*)&list->patterns[i].length, 4);
                if (res == ERROR_SUCCESS)
	            res = FUNC3(pattern_key, position_valuename, 0, REG_DWORD,
                                         (const BYTE*)&list->patterns[i].position, 4);
                if (res == ERROR_SUCCESS)
	            res = FUNC3(pattern_key, pattern_valuename, 0, REG_BINARY,
				         list->patterns[i].pattern,
				         list->patterns[i].length);
                if (res == ERROR_SUCCESS)
	            res = FUNC3(pattern_key, mask_valuename, 0, REG_BINARY,
				         list->patterns[i].mask,
				         list->patterns[i].length);
                if (res == ERROR_SUCCESS)
	            res = FUNC3(pattern_key, endofstream_valuename, 0, REG_DWORD,
                                         (const BYTE*)&list->patterns[i].endofstream, 4);
                FUNC1(pattern_key);
            }
            FUNC1(patterns_key);
            if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

    error_close_clsid_key:
	FUNC1(clsid_key);
    }

error_close_coclass_key:
    FUNC1(instance_key);
    FUNC1(decoders_key);
    FUNC1(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}