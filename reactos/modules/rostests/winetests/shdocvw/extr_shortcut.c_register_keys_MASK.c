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
struct registry_value {int /*<<< orphan*/  dwType; int /*<<< orphan*/  szName; } ;
struct registry_key {unsigned int cValues; unsigned int cSubKeys; struct registry_key* pSubKeys; struct registry_value* pValues; int /*<<< orphan*/  szName; } ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct registry_value const*) ; 
 int /*<<< orphan*/  FUNC1 (struct registry_value const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC5(HKEY hRootKey, const struct registry_key *keys, unsigned int numKeys) {
    HKEY hKey;
    unsigned int iKey, iValue;

    for (iKey = 0; iKey < numKeys; iKey++) {
        if (ERROR_SUCCESS == FUNC3(hRootKey, keys[iKey].szName, 0, NULL, 0, 
                                             KEY_WRITE, NULL, &hKey, NULL))
        {
            for (iValue = 0; iValue < keys[iKey].cValues; iValue++) {
                const struct registry_value * value = &keys[iKey].pValues[iValue];
                if (ERROR_SUCCESS != FUNC4(hKey, value->szName, 0, value->dwType,
                                                    FUNC0(value), FUNC1(value)))
                {
                    FUNC2(hKey);
                    return FALSE;
                }
            }
            
            if (!FUNC5(hKey, keys[iKey].pSubKeys, keys[iKey].cSubKeys)) {
                FUNC2(hKey);
                return FALSE;
            }
            
            FUNC2(hKey);
        }
    }
        
    return TRUE;
}