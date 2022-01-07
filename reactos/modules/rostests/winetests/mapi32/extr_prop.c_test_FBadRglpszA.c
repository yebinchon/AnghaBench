
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef char CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int ok (int,char*) ;
 scalar_t__ pFBadRglpszA (char**,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_FBadRglpszA(void)
{
    LPSTR lpStrs[4];
    static CHAR szString[] = "A String";
    BOOL bRet;

    if (!pFBadRglpszA)
    {
        win_skip("FBadRglpszA is not available\n");
        return;
    }

    bRet = pFBadRglpszA(((void*)0), 10);
    ok(bRet == TRUE, "FBadRglpszA(Null): expected TRUE, got FALSE\n");

    lpStrs[0] = lpStrs[1] = lpStrs[2] = lpStrs[3] = ((void*)0);
    bRet = pFBadRglpszA(lpStrs, 4);
    ok(bRet == TRUE, "FBadRglpszA(Nulls): expected TRUE, got FALSE\n");

    lpStrs[0] = lpStrs[1] = lpStrs[2] = szString;
    bRet = pFBadRglpszA(lpStrs, 3);
    ok(bRet == FALSE, "FBadRglpszA(valid): expected FALSE, got TRUE\n");

    bRet = pFBadRglpszA(lpStrs, 4);
    ok(bRet == TRUE, "FBadRglpszA(1 invalid): expected TRUE, got FALSE\n");
}
