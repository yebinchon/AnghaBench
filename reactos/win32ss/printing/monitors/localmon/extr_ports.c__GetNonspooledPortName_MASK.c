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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int ERROR_NOT_ENOUGH_MEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int cchNonspooledPrefix ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wszNonspooledPrefix ; 

__attribute__((used)) static __inline DWORD
FUNC5(PCWSTR pwszPortNameWithoutColon, PWSTR* ppwszNonspooledPortName)
{
    DWORD cchPortNameWithoutColon;

    cchPortNameWithoutColon = FUNC4(pwszPortNameWithoutColon);

    *ppwszNonspooledPortName = FUNC1((cchNonspooledPrefix + cchPortNameWithoutColon + 1) * sizeof(WCHAR));
    if (!*ppwszNonspooledPortName)
    {
        FUNC2("DllAllocSplMem failed with error %lu!\n", FUNC3());
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    FUNC0(*ppwszNonspooledPortName, wszNonspooledPrefix, cchNonspooledPrefix * sizeof(WCHAR));
    FUNC0(&(*ppwszNonspooledPortName)[cchNonspooledPrefix], pwszPortNameWithoutColon, (cchPortNameWithoutColon + 1) * sizeof(WCHAR));

    return ERROR_SUCCESS;
}