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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_BADKEY ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    DWORD ret;
    HKEY key;

    ret = FUNC2(hkey_main, NULL);

    /* There is a bug in NT4 and W2K that doesn't check if the subkey is NULL. If
     * there are also no subkeys available it will delete the key pointed to by hkey_main.
     * Not re-creating will make some next tests fail.
     */
    if (ret == ERROR_SUCCESS)
    {
        FUNC6("We are probably running on NT4 or W2K as the main key is deleted,"
            " re-creating the main key\n");
        FUNC5();
    }
    else
        FUNC4(ret == ERROR_INVALID_PARAMETER ||
           ret == ERROR_ACCESS_DENIED ||
           ret == ERROR_BADKEY, /* Win95 */
           "ret=%d\n", ret);

    ret = FUNC1(hkey_main, "deleteme", &key);
    FUNC4(ret == ERROR_SUCCESS, "Could not create key, got %d\n", ret);
    ret = FUNC2(key, "");
    FUNC4(ret == ERROR_SUCCESS, "RegDeleteKeyA failed, got %d\n", ret);
    FUNC0(key);
    ret = FUNC3(hkey_main, "deleteme", &key);
    FUNC4(ret == ERROR_FILE_NOT_FOUND, "Key was not deleted, got %d\n", ret);
    FUNC0(key);
}