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
struct registry_key {unsigned int cSubKeys; int /*<<< orphan*/  szName; struct registry_key* pSubKeys; } ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  DELETE ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(HKEY hRootKey, const struct registry_key *keys, unsigned int numKeys) {
    HKEY hKey;
    unsigned int iKey;

    for (iKey = 0; iKey < numKeys; iKey++) {
        if (ERROR_SUCCESS == FUNC2(hRootKey, keys[iKey].szName, 0, DELETE, &hKey)) {
            FUNC3(hKey, keys[iKey].pSubKeys, keys[iKey].cSubKeys);
            FUNC0(hKey);
        }
        FUNC1(hRootKey, keys[iKey].szName);
    }
}