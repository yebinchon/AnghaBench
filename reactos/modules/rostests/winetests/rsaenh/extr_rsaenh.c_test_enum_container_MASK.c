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
typedef  int /*<<< orphan*/  abContainerName ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_FIRST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  PP_ENUMCONTAINERS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    BYTE abContainerName[MAX_PATH + 2]; /* Larger than maximum name len */
    DWORD dwBufferLen;
    BOOL result, fFound = FALSE;

    /* If PP_ENUMCONTAINERS is queried with CRYPT_FIRST and abData == NULL, it returns
     * the maximum legal length of container names (which is MAX_PATH + 1 == 261) */
    FUNC2(0xdeadbeef);
    result = FUNC0(hProv, PP_ENUMCONTAINERS, NULL, &dwBufferLen, CRYPT_FIRST);
    FUNC4 (result, "%08x\n", FUNC1());
    FUNC4 (dwBufferLen == MAX_PATH + 1 ||
        FUNC3(dwBufferLen != MAX_PATH + 1), /* Win9x, WinMe, NT4 */
        "Expected dwBufferLen to be (MAX_PATH + 1), it was : %d\n", dwBufferLen);

    /* If the result fits into abContainerName dwBufferLen is left untouched */
    dwBufferLen = (DWORD)sizeof(abContainerName);
    result = FUNC0(hProv, PP_ENUMCONTAINERS, abContainerName, &dwBufferLen, CRYPT_FIRST);
    FUNC4 (result && dwBufferLen == (DWORD)sizeof(abContainerName), "%08x\n", FUNC1());
    
    /* We only check, if the currently open 'winetest' container is among the enumerated. */
    do {
        if (!FUNC5((const char*)abContainerName, "winetest")) fFound = TRUE;
        dwBufferLen = (DWORD)sizeof(abContainerName);
    } while (FUNC0(hProv, PP_ENUMCONTAINERS, abContainerName, &dwBufferLen, 0));
        
    FUNC4 (fFound && FUNC1() == ERROR_NO_MORE_ITEMS, "%d, %08x\n", fFound, FUNC1());
}