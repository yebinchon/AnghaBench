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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static BOOL FUNC7(const char* extension)
{
    HKEY hkey;
    char class[MAX_PATH];
    LONG rc;

    FUNC5(class, "shlexec%s", extension);
    rc=FUNC1(HKEY_CLASSES_ROOT, extension, 0, NULL, 0, KEY_SET_VALUE,
                       NULL, &hkey, NULL);
    FUNC4(rc == ERROR_SUCCESS || rc == ERROR_ACCESS_DENIED,
       "could not create association %s (rc=%d)\n", class, rc);
    if (rc != ERROR_SUCCESS)
        return FALSE;

    rc=FUNC2(hkey, NULL, 0, REG_SZ, (LPBYTE) class, FUNC6(class)+1);
    FUNC4(rc==ERROR_SUCCESS, "RegSetValueEx '%s' failed, expected ERROR_SUCCESS, got %d\n", class, rc);
    FUNC0(hkey);

    return FUNC3(class, FALSE);
}