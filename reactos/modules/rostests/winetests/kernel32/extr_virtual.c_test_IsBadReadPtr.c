
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ IsBadReadPtr (char*,int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_IsBadReadPtr(void)
{
    BOOL ret;
    void *ptr = (void *)0xdeadbeef;
    char stackvar;

    ret = IsBadReadPtr(((void*)0), 0);
    ok(ret == FALSE, "Expected IsBadReadPtr to return FALSE, got %d\n", ret);

    ret = IsBadReadPtr(((void*)0), 1);
    ok(ret == TRUE, "Expected IsBadReadPtr to return TRUE, got %d\n", ret);

    ret = IsBadReadPtr(ptr, 0);
    ok(ret == FALSE, "Expected IsBadReadPtr to return FALSE, got %d\n", ret);

    ret = IsBadReadPtr(ptr, 1);
    ok(ret == TRUE, "Expected IsBadReadPtr to return TRUE, got %d\n", ret);

    ret = IsBadReadPtr(&stackvar, 0);
    ok(ret == FALSE, "Expected IsBadReadPtr to return FALSE, got %d\n", ret);

    ret = IsBadReadPtr(&stackvar, sizeof(char));
    ok(ret == FALSE, "Expected IsBadReadPtr to return FALSE, got %d\n", ret);
}
