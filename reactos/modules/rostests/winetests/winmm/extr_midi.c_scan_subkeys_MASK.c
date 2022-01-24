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
typedef  int /*<<< orphan*/  name ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int KEY_ENUMERATE_SUB_KEYS ; 
 int KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (char*,char* const) ; 
 size_t FUNC5 (char* const) ; 

__attribute__((used)) static BOOL FUNC6(HKEY parent, const LPCSTR *sub_keys)
{
    char name[64];
    DWORD index = 0;
    DWORD name_len = sizeof(name);
    BOOL found_vmware = FALSE;

    if (sub_keys[0] == NULL)
    {
       /* We're at the deepest level, check "Identifier" value now */
       char *test;
       if (FUNC3(parent, "Identifier", NULL, NULL, (LPBYTE) name, &name_len) != ERROR_SUCCESS)
           return FALSE;
       for (test = name; test < name + FUNC5(name) - 6 && ! found_vmware; test++)
       {
           char c = test[6];
           test[6] = '\0';
           found_vmware = (FUNC4(test, "VMware") == 0);
           test[6] = c;
       }
       return found_vmware;
    }

    while (FUNC1(parent, index, name, &name_len, NULL, NULL, NULL, NULL) == ERROR_SUCCESS &&
           ! found_vmware) {
        char c = name[FUNC5(sub_keys[0])];
        name[FUNC5(sub_keys[0])] = '\0';
        if (FUNC4(name, sub_keys[0]) == 0) {
            HKEY sub_key;
            name[FUNC5(sub_keys[0])] = c;
            if (FUNC2(parent, name, 0, KEY_ENUMERATE_SUB_KEYS | KEY_QUERY_VALUE, &sub_key) == ERROR_SUCCESS) {
                found_vmware = FUNC6(sub_key, sub_keys + 1);
                FUNC0(sub_key);
            }
        }

        name_len = sizeof(name);
        index++;
    }

    return found_vmware;
}