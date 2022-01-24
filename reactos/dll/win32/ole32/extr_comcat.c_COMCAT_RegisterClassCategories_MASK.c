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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  const* REFCLSID ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  CATID ;

/* Variables and functions */
 int CHARS_IN_GUID ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * clsid_keyname ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(
    REFCLSID rclsid,
    LPCWSTR type,
    ULONG cCategories,
    const CATID *rgcatid)
{
    WCHAR keyname[CHARS_IN_GUID];
    HRESULT res;
    HKEY clsid_key, class_key, type_key;

    if (cCategories && rgcatid == NULL) return E_POINTER;

    /* Format the class key name. */
    res = FUNC2(rclsid, keyname, CHARS_IN_GUID);
    if (FUNC0(res)) return res;

    /* Create (or open) the CLSID key. */
    res = FUNC3(HKEY_CLASSES_ROOT, clsid_keyname, KEY_READ|KEY_WRITE, &clsid_key);
    if (res != ERROR_SUCCESS) return E_FAIL;

    /* Create (or open) the class key. */
    res = FUNC3(clsid_key, keyname, KEY_READ|KEY_WRITE, &class_key);
    if (res == ERROR_SUCCESS) {
	/* Create (or open) the category type key. */
	res = FUNC3(class_key, type, KEY_READ|KEY_WRITE, &type_key);
	if (res == ERROR_SUCCESS) {
	    for (; cCategories; --cCategories, ++rgcatid) {
		HKEY key;

		/* Format the category key name. */
		res = FUNC2(rgcatid, keyname, CHARS_IN_GUID);
		if (FUNC0(res)) continue;

		/* Do the register. */
		res = FUNC3(type_key, keyname, KEY_READ|KEY_WRITE, &key);
		if (res == ERROR_SUCCESS) FUNC1(key);
	    }
	    res = S_OK;
	} else res = E_FAIL;
	FUNC1(class_key);
    } else res = E_FAIL;
    FUNC1(clsid_key);

    return res;
}