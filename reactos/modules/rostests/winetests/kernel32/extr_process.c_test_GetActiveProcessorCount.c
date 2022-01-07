
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 scalar_t__ pGetActiveProcessorCount (int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetActiveProcessorCount(void)
{
    DWORD count;

    if (!pGetActiveProcessorCount)
    {
        win_skip("GetActiveProcessorCount not available, skipping test\n");
        return;
    }

    count = pGetActiveProcessorCount(0);
    ok(count, "GetActiveProcessorCount failed, error %u\n", GetLastError());


    SetLastError(0xdeadbeef);
    count = pGetActiveProcessorCount(101);
    ok(count == 0, "Expeced GetActiveProcessorCount to fail\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", GetLastError());
}
