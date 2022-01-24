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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WineTestObject ; 
 int /*<<< orphan*/  DELETE ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const WCHAR clsidW[] = {'C','L','S','I','D','\\',0};
    DWORD ret;
    HKEY root;
    WCHAR buf[39 + 6];

    FUNC4(buf, clsidW);
    FUNC3(&CLSID_WineTestObject, buf + 6, 39);

    ret = FUNC1(HKEY_CLASSES_ROOT, buf, 0, NULL, 0,
                          DELETE, NULL, &root, NULL);
    if (ret == ERROR_SUCCESS)
    {
        ret = FUNC2(root, "InprocHandler32");
        FUNC5(ret == ERROR_SUCCESS, "RegDeleteKey error %u\n", ret);
        ret = FUNC2(root, "LocalServer32");
        FUNC5(ret == ERROR_SUCCESS, "RegDeleteKey error %u\n", ret);
        ret = FUNC2(root, "");
        FUNC5(ret == ERROR_SUCCESS, "RegDeleteKey error %u\n", ret);
        FUNC0(root);
    }
}