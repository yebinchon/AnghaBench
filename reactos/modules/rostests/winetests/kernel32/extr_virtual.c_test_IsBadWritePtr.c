
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ IsBadWritePtr (char*,int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_IsBadWritePtr(void)
{
    BOOL ret;
    void *ptr = (void *)0xdeadbeef;
    char stackval;

    ret = IsBadWritePtr(((void*)0), 0);
    ok(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);

    ret = IsBadWritePtr(((void*)0), 1);
    ok(ret == TRUE, "Expected IsBadWritePtr to return TRUE, got %d\n", ret);

    ret = IsBadWritePtr(ptr, 0);
    ok(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);

    ret = IsBadWritePtr(ptr, 1);
    ok(ret == TRUE, "Expected IsBadWritePtr to return TRUE, got %d\n", ret);

    ret = IsBadWritePtr(&stackval, 0);
    ok(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);

    ret = IsBadWritePtr(&stackval, sizeof(char));
    ok(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);
}
