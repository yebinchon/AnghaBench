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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ NTE_BAD_TYPE ; 
 int /*<<< orphan*/  PP_KEYX_KEYSIZE_INC ; 
 int /*<<< orphan*/  PP_SIG_KEYSIZE_INC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  nt4 ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void) 
{
    BOOL result;
    DWORD dwLen, dwInc;
    
    dwLen = (DWORD)sizeof(DWORD);
    FUNC2(0xdeadbeef);
    result = FUNC0(hProv, PP_SIG_KEYSIZE_INC, (BYTE*)&dwInc, &dwLen, 0);
    if (!result && FUNC1() == NTE_BAD_TYPE)
    {
        FUNC4("PP_SIG_KEYSIZE_INC is not supported (win9x or NT)\n");
        nt4++;
    }
    else
        FUNC3(result && dwInc==8, "%08x, %d\n", FUNC1(), dwInc);
    
    dwLen = (DWORD)sizeof(DWORD);
    FUNC2(0xdeadbeef);
    result = FUNC0(hProv, PP_KEYX_KEYSIZE_INC, (BYTE*)&dwInc, &dwLen, 0);
    if (!result && FUNC1() == NTE_BAD_TYPE)
        FUNC4("PP_KEYX_KEYSIZE_INC is not supported (win9x or NT)\n");
    else
        FUNC3(result && dwInc==8, "%08x, %d\n", FUNC1(), dwInc);
}