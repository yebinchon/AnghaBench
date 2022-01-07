
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int SetLastError (int) ;
 int SetupCloseInfFile (int *) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_close_inf_file(void)
{
    SetLastError(0xdeadbeef);
    SetupCloseInfFile(((void*)0));
    ok(GetLastError() == 0xdeadbeef ||
        GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected 0xdeadbeef, got %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    SetupCloseInfFile(INVALID_HANDLE_VALUE);
    ok(GetLastError() == 0xdeadbeef ||
        GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected 0xdeadbeef, got %u\n", GetLastError());
}
