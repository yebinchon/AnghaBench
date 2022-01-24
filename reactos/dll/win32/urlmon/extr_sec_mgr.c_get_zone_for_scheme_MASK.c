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
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ REG_DWORD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static BOOL FUNC3(HKEY key, LPCWSTR schema, DWORD *zone)
{
    static const WCHAR wildcardW[] = {'*',0};

    DWORD res;
    DWORD size = sizeof(DWORD);
    DWORD type;

    /* See if the key contains a value for the scheme first. */
    res = FUNC0(key, schema, NULL, &type, (BYTE*)zone, &size);
    if(res == ERROR_SUCCESS) {
        if(type == REG_DWORD)
            return TRUE;
        FUNC1("Unexpected value type %d for value %s, expected REG_DWORD\n", type, FUNC2(schema));
    }

    /* Try to get the zone for the wildcard scheme. */
    size = sizeof(DWORD);
    res = FUNC0(key, wildcardW, NULL, &type, (BYTE*)zone, &size);
    if(res != ERROR_SUCCESS)
        return FALSE;

    if(type != REG_DWORD) {
        FUNC1("Unexpected value type %d for value %s, expected REG_DWORD\n", type, FUNC2(wildcardW));
        return FALSE;
    }

    return TRUE;
}