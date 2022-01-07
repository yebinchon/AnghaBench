
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int ok (int,char*) ;
 scalar_t__ pFBadRow (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_FBadRow(void)
{
    ULONG ulRet;

    if (!pFBadRow)
    {
        win_skip("FBadRow is not available\n");
        return;
    }

    ulRet = pFBadRow(((void*)0));
    ok(ulRet != 0, "FBadRow(null): Expected non-zero, got 0\n");


}
