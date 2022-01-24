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
typedef  char WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  const* REFCLSID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  CATID ;

/* Variables and functions */
 int /*<<< orphan*/  CHARS_IN_GUID ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(
    REFCLSID rclsid,
    LPCWSTR type,
    ULONG cCategories,
    const CATID *rgcatid)
{
    WCHAR keyname[68] = { 'C', 'L', 'S', 'I', 'D', '\\' };
    HRESULT res;
    HKEY type_key;

    if (cCategories && rgcatid == NULL) return E_POINTER;

    /* Format the class category type key name. */
    res = FUNC3(rclsid, keyname + 6, CHARS_IN_GUID);
    if (FUNC0(res)) return res;
    keyname[44] = '\\';
    FUNC4(keyname + 45, type);

    /* Open the class category type key. */
    res = FUNC5(HKEY_CLASSES_ROOT, keyname, KEY_READ|KEY_WRITE, &type_key);
    if (res != ERROR_SUCCESS) return E_FAIL;

    for (; cCategories; --cCategories, ++rgcatid) {
	/* Format the category key name. */
	res = FUNC3(rgcatid, keyname, CHARS_IN_GUID);
	if (FUNC0(res)) continue;

	/* Do the unregister. */
	FUNC2(type_key, keyname);
    }
    FUNC1(type_key);

    return S_OK;
}