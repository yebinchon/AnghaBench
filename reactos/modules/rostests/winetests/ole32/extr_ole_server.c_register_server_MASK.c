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
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WineTestObject ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int KEY_CREATE_SUB_KEY ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static BOOL FUNC9(const char *server, BOOL inproc_handler)
{
    static const WCHAR clsidW[] = {'C','L','S','I','D','\\',0};
    DWORD ret;
    HKEY root;
    WCHAR buf[39 + 6];
    char server_path[MAX_PATH];

    FUNC5(server_path, server);
    FUNC4(server_path, " ole_server");

    FUNC6(buf, clsidW);
    FUNC3(&CLSID_WineTestObject, buf + 6, 39);

    ret = FUNC1(HKEY_CLASSES_ROOT, buf, 0, NULL, 0,
                          KEY_READ | KEY_WRITE | KEY_CREATE_SUB_KEY, NULL, &root, NULL);
    if (ret == ERROR_SUCCESS)
    {
        ret = FUNC2(root, "LocalServer32", REG_SZ, server_path, FUNC8(server_path));
        FUNC7(ret == ERROR_SUCCESS, "RegSetValue error %u\n", ret);

        if (inproc_handler)
        {
            ret = FUNC2(root, "InprocHandler32", REG_SZ, "ole32.dll", 9);
            FUNC7(ret == ERROR_SUCCESS, "RegSetValue error %u\n", ret);
        }

        FUNC0(root);
    }

    return ret == ERROR_SUCCESS;
}