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
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOCSTR_EXECUTABLE ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    LONG ret;
    HKEY hkey;
    HRESULT hr;
    static const CHAR dotWinetest[] = {
        '.','w','i','n','e','t','e','s','t',0
    };
    static const CHAR winetestfile[] = {
        'w','i','n','e','t','e','s','t', 'f','i','l','e',0
    };
    static const CHAR winetestfileAction[] = {
        'w','i','n','e','t','e','s','t','f','i','l','e',
        '\\','s','h','e','l','l',
        '\\','f','o','o',
        '\\','c','o','m','m','a','n','d',0
    };
    static const CHAR action[] = {
        'n','o','t','e','p','a','d','.','e','x','e',0
    };
    CHAR buf[MAX_PATH];
    DWORD len = MAX_PATH;

    if (!&pAssocQueryStringA)
    {
        FUNC11("AssocQueryStringA() is missing\n");
        return;
    }

    buf[0] = '\0';
    ret = FUNC2(HKEY_CLASSES_ROOT, dotWinetest, &hkey);
    if (ret != ERROR_SUCCESS) {
        FUNC9("failed to create dotWinetest key\n");
        return;
    }

    ret = FUNC3(hkey, NULL, REG_SZ, winetestfile, FUNC6(winetestfile));
    FUNC1(hkey);
    if (ret != ERROR_SUCCESS)
    {
        FUNC9("failed to set dotWinetest key\n");
        goto cleanup;
    }

    ret = FUNC2(HKEY_CLASSES_ROOT, winetestfileAction, &hkey);
    if (ret != ERROR_SUCCESS)
    {
        FUNC9("failed to create winetestfileAction key\n");
        goto cleanup;
    }

    ret = FUNC3(hkey, NULL, REG_SZ, action, FUNC6(action));
    FUNC1(hkey);
    if (ret != ERROR_SUCCESS)
    {
        FUNC9("failed to set winetestfileAction key\n");
        goto cleanup;
    }

    hr = FUNC8(0, ASSOCSTR_EXECUTABLE, dotWinetest, NULL, buf, &len);
    FUNC7(hr == S_OK ||
       hr == FUNC0(ERROR_FILE_NOT_FOUND), /* XP and W2K3 */
       "Unexpected result : %08x\n", hr);
    hr = FUNC8(0, ASSOCSTR_EXECUTABLE, dotWinetest, "foo", buf, &len);
    FUNC5(S_OK, hr);
    FUNC7(FUNC10(buf, action) != NULL,
        "got '%s' (Expected result to include 'notepad.exe')\n", buf);

cleanup:
    FUNC4(HKEY_CLASSES_ROOT, dotWinetest);
    FUNC4(HKEY_CLASSES_ROOT, winetestfile);

}