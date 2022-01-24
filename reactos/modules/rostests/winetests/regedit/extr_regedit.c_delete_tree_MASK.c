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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LONG FUNC8(const HKEY key, const char *subkey)
{
    HKEY hkey;
    LONG ret;
    char *subkey_name = NULL;
    DWORD max_subkey_len, subkey_len;
    static const char empty[1];

    ret = FUNC6(key, subkey, 0, KEY_READ, &hkey);
    if (ret) return ret;

    ret = FUNC7(hkey, NULL, NULL, NULL, NULL, &max_subkey_len,
                           NULL, NULL, NULL, NULL, NULL, NULL);
    if (ret) goto cleanup;

    max_subkey_len++;

    subkey_name = FUNC1(FUNC0(), 0, max_subkey_len);
    if (!subkey_name)
    {
        ret = ERROR_NOT_ENOUGH_MEMORY;
        goto cleanup;
    }

    for (;;)
    {
        subkey_len = max_subkey_len;
        ret = FUNC5(hkey, 0, subkey_name, &subkey_len, NULL, NULL, NULL, NULL);
        if (ret == ERROR_NO_MORE_ITEMS) break;
        if (ret) goto cleanup;
        ret = FUNC8(hkey, subkey_name);
        if (ret) goto cleanup;
    }

    ret = FUNC4(hkey, empty);

cleanup:
    FUNC2(FUNC0(), 0, subkey_name);
    FUNC3(hkey);
    return ret;
}