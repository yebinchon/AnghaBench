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
struct regsvr_category {int /*<<< orphan*/ * clsid; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WICImagingCategories ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * clsid_keyname ; 
 int /*<<< orphan*/  clsid_valuename ; 
 int /*<<< orphan*/ * instance_keyname ; 

__attribute__((used)) static HRESULT FUNC5(const struct regsvr_category *list)
{
    LONG res;
    WCHAR buf[39];
    HKEY coclass_key, categories_key, instance_key;

    res = FUNC2(HKEY_CLASSES_ROOT, clsid_keyname, 0, NULL, 0,
                          KEY_READ | KEY_WRITE, NULL, &coclass_key, NULL);
    if (res != ERROR_SUCCESS) return FUNC0(res);

    FUNC4(&CLSID_WICImagingCategories, buf, 39);
    res = FUNC2(coclass_key, buf, 0, NULL, 0,
                          KEY_READ | KEY_WRITE, NULL, &categories_key, NULL);
    if (res != ERROR_SUCCESS)
    {
        FUNC1(coclass_key);
        return FUNC0(res);
    }

    res = FUNC2(categories_key, instance_keyname, 0, NULL, 0,
                          KEY_READ | KEY_WRITE, NULL, &instance_key, NULL);

    for (; res == ERROR_SUCCESS && list->clsid; list++)
    {
        HKEY instance_clsid_key;

        FUNC4(list->clsid, buf, 39);
        res = FUNC2(instance_key, buf, 0, NULL, 0,
                              KEY_READ | KEY_WRITE, NULL, &instance_clsid_key, NULL);
        if (res == ERROR_SUCCESS)
        {
            res = FUNC3(instance_clsid_key, clsid_valuename, 0, REG_SZ,
                                 (const BYTE *)buf, 78);
            FUNC1(instance_clsid_key);
        }
    }

    FUNC1(instance_key);
    FUNC1(categories_key);
    FUNC1(coclass_key);

    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}