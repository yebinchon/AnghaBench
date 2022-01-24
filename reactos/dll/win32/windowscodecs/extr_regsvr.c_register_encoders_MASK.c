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
struct regsvr_encoder {int const* const clsid; int const* const vendor; int const* const container_format; int** formats; scalar_t__ extensions; scalar_t__ mimetypes; scalar_t__ version; scalar_t__ friendlyname; scalar_t__ author; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int const CATID_WICBitmapEncoders ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int const* const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  author_valuename ; 
 int /*<<< orphan*/ * clsid_keyname ; 
 int /*<<< orphan*/  clsid_valuename ; 
 int /*<<< orphan*/  containerformat_valuename ; 
 int /*<<< orphan*/  extensions_valuename ; 
 int /*<<< orphan*/ * formats_keyname ; 
 int /*<<< orphan*/  friendlyname_valuename ; 
 int /*<<< orphan*/ * instance_keyname ; 
 int /*<<< orphan*/  mimetypes_valuename ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  vendor_valuename ; 
 int /*<<< orphan*/  version_valuename ; 

__attribute__((used)) static HRESULT FUNC7(struct regsvr_encoder const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY encoders_key;
    HKEY instance_key;

    res = FUNC2(HKEY_CLASSES_ROOT, clsid_keyname, 0, NULL, 0,
			  KEY_READ | KEY_WRITE, NULL, &coclass_key, NULL);
    if (res == ERROR_SUCCESS)  {
        FUNC5(&CATID_WICBitmapEncoders, buf, 39);
        res = FUNC2(coclass_key, buf, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &encoders_key, NULL);
        if (res == ERROR_SUCCESS)
        {
            res = FUNC2(encoders_key, instance_keyname, 0, NULL, 0,
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
				 FUNC6(list->author) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->friendlyname) {
	    res = FUNC3(clsid_key, friendlyname_valuename, 0, REG_SZ,
                                 (const BYTE*)list->friendlyname,
				 FUNC6(list->friendlyname) + 1);
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
				 FUNC6(list->version) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->mimetypes) {
	    res = FUNC3(clsid_key, mimetypes_valuename, 0, REG_SZ,
                                 (const BYTE*)list->mimetypes,
				 FUNC6(list->mimetypes) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
        }

        if (list->extensions) {
	    res = FUNC3(clsid_key, extensions_valuename, 0, REG_SZ,
                                 (const BYTE*)list->extensions,
				 FUNC6(list->extensions) + 1);
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

    error_close_clsid_key:
	FUNC1(clsid_key);
    }

error_close_coclass_key:
    FUNC1(instance_key);
    FUNC1(encoders_key);
    FUNC1(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}