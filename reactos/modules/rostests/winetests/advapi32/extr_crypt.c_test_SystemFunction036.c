
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 int GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pSystemFunction036 (int*,int) ;
 int trace (char*,scalar_t__,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SystemFunction036(void)
{
    BOOL ret;
    int test;

    if (!pSystemFunction036)
    {
        win_skip("SystemFunction036 is not available\n");
        return;
    }

    ret = pSystemFunction036(((void*)0), 0);
    ok(ret == TRUE, "Expected SystemFunction036 to return TRUE, got %d\n", ret);


    if (0)
    {
        SetLastError(0xdeadbeef);
        ret = pSystemFunction036(((void*)0), 5);
        trace("ret = %d, GetLastError() = %d\n", ret, GetLastError());
    }

    ret = pSystemFunction036(&test, 0);
    ok(ret == TRUE, "Expected SystemFunction036 to return TRUE, got %d\n", ret);

    ret = pSystemFunction036(&test, sizeof(int));
    ok(ret == TRUE, "Expected SystemFunction036 to return TRUE, got %d\n", ret);
}
