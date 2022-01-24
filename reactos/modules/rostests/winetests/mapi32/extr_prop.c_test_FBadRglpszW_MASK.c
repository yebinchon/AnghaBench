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
typedef  char* LPWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    LPWSTR lpStrs[4];
    static WCHAR szString[] = { 'A',' ','S','t','r','i','n','g','\0' };
    BOOL bRet;

    if (!&pFBadRglpszW)
    {
        FUNC2("FBadRglpszW is not available\n");
        return;
    }

    bRet = FUNC1(NULL, 10);
    FUNC0(bRet == TRUE, "FBadRglpszW(Null): expected TRUE, got FALSE\n");

    lpStrs[0] = lpStrs[1] = lpStrs[2] = lpStrs[3] = NULL;
    bRet = FUNC1(lpStrs, 4);
    FUNC0(bRet == TRUE, "FBadRglpszW(Nulls): expected TRUE, got FALSE\n");

    lpStrs[0] = lpStrs[1] = lpStrs[2] = szString;
    bRet = FUNC1(lpStrs, 3);
    FUNC0(bRet == FALSE, "FBadRglpszW(valid): expected FALSE, got TRUE\n");

    bRet = FUNC1(lpStrs, 4);
    FUNC0(bRet == TRUE, "FBadRglpszW(1 invalid): expected TRUE, got FALSE\n");
}