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
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int* PCWSTR ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 size_t ERROR_INVALID_PARAMETER ; 
 size_t ERROR_NOT_ENOUGH_MEMORY ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (int*) ; 

DWORD
FUNC5(PCWSTR pwszPortName, PWSTR* ppwszPortNameWithoutColon)
{
    DWORD cchPortNameWithoutColon;

    // Compute the string length of pwszPortNameWithoutColon.
    cchPortNameWithoutColon = FUNC4(pwszPortName) - 1;

    // Check if pwszPortName really has a colon as the last character.
    if (pwszPortName[cchPortNameWithoutColon] != L':')
        return ERROR_INVALID_PARAMETER;

    // Allocate the output buffer.
    *ppwszPortNameWithoutColon = FUNC1((cchPortNameWithoutColon + 1) * sizeof(WCHAR));
    if (!*ppwszPortNameWithoutColon)
    {
        FUNC2("DllAllocSplMem failed with error %lu!\n", FUNC3());
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    // Copy the port name without colon into the buffer.
    // The buffer is already zero-initialized, so no additional null-termination is necessary.
    FUNC0(*ppwszPortNameWithoutColon, pwszPortName, cchPortNameWithoutColon * sizeof(WCHAR));

    return ERROR_SUCCESS;
}