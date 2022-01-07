
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int ok (int,char*) ;
 scalar_t__ pIsBadBoundedStringPtr (char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_IsBadBoundedStringPtr(void)
{
    if (!pIsBadBoundedStringPtr)
    {
        win_skip("IsBadBoundedStringPtr is not available\n");
        return;
    }

    ok(pIsBadBoundedStringPtr(((void*)0), 0) == TRUE, "IsBadBoundedStringPtr: expected TRUE\n");
    ok(pIsBadBoundedStringPtr("TEST", 4) == TRUE, "IsBadBoundedStringPtr: expected TRUE\n");
    ok(pIsBadBoundedStringPtr("TEST", 5) == FALSE, "IsBadBoundedStringPtr: expected FALSE\n");
}
