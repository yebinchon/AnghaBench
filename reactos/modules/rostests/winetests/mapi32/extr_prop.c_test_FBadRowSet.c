
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int ok (int,char*) ;
 scalar_t__ pFBadRowSet (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_FBadRowSet(void)
{
    ULONG ulRet;

    if (!pFBadRowSet)
    {
        win_skip("FBadRowSet is not available\n");
        return;
    }

    ulRet = pFBadRowSet(((void*)0));
    ok(ulRet != 0, "FBadRow(null): Expected non-zero, got 0\n");


}
