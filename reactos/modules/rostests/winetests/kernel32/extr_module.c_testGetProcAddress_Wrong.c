
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HMODULE ;
typedef scalar_t__ FARPROC ;


 scalar_t__ ERROR_MOD_NOT_FOUND ;
 scalar_t__ ERROR_PROC_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void testGetProcAddress_Wrong(void)
{
    FARPROC fp;

    SetLastError(0xdeadbeef);
    fp = GetProcAddress(((void*)0), "non_ex_call");
    ok( !fp, "non_ex_call should not be found\n");
    ok( GetLastError() == ERROR_PROC_NOT_FOUND, "Expected ERROR_PROC_NOT_FOUND, got %d\n", GetLastError() );

    SetLastError(0xdeadbeef);
    fp = GetProcAddress((HMODULE)0xdeadbeef, "non_ex_call");
    ok( !fp, "non_ex_call should not be found\n");
    ok( GetLastError() == ERROR_MOD_NOT_FOUND, "Expected ERROR_MOD_NOT_FOUND, got %d\n", GetLastError() );
}
