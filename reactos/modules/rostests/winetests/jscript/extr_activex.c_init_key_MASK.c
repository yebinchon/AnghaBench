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
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static BOOL FUNC5(const char *key_name, const char *def_value, BOOL init)
{
    HKEY hkey;
    DWORD res;

    if(!init) {
        FUNC2(HKEY_CLASSES_ROOT, key_name);
        return TRUE;
    }

    res = FUNC1(HKEY_CLASSES_ROOT, key_name, &hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    if(def_value)
        res = FUNC3(hkey, NULL, REG_SZ, def_value, FUNC4(def_value));

    FUNC0(hkey);

    return res == ERROR_SUCCESS;
}