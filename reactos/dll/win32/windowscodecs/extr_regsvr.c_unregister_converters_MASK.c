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
struct regsvr_converter {int /*<<< orphan*/ * clsid; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  CATID_WICFormatConverters ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  clsid_keyname ; 
 int /*<<< orphan*/ * instance_keyname ; 

__attribute__((used)) static HRESULT FUNC6(struct regsvr_converter const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;
    WCHAR buf[39];
    HKEY converters_key;
    HKEY instance_key;

    res = FUNC4(HKEY_CLASSES_ROOT, clsid_keyname, 0,
			KEY_READ | KEY_WRITE, &coclass_key);
    if (res == ERROR_FILE_NOT_FOUND) return S_OK;

    if (res == ERROR_SUCCESS)  {
        FUNC5(&CATID_WICFormatConverters, buf, 39);
        res = FUNC2(coclass_key, buf, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &converters_key, NULL);
        if (res == ERROR_SUCCESS)
        {
            res = FUNC2(converters_key, instance_keyname, 0, NULL, 0,
		              KEY_READ | KEY_WRITE, NULL, &instance_key, NULL);
            if (res != ERROR_SUCCESS) goto error_close_coclass_key;
        }
        if (res != ERROR_SUCCESS)
            FUNC1(coclass_key);
    }
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->clsid; ++list) {
	FUNC5(list->clsid, buf, 39);

	res = FUNC3(coclass_key, buf);
	if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
	if (res != ERROR_SUCCESS) goto error_close_coclass_key;

	res = FUNC3(instance_key, buf);
	if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
	if (res != ERROR_SUCCESS) goto error_close_coclass_key;
    }

error_close_coclass_key:
    FUNC1(instance_key);
    FUNC1(converters_key);
    FUNC1(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}