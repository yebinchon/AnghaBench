
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int BOOL ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ GetLastError () ;
 int * OpenSCManagerA (int *,int *,int ) ;
 int SC_MANAGER_CONNECT ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_close(void)
{
    SC_HANDLE handle;
    BOOL ret;


    SetLastError(0xdeadbeef);
    ret = CloseServiceHandle(((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got %d\n", GetLastError());




    handle = OpenSCManagerA(((void*)0), ((void*)0), SC_MANAGER_CONNECT);
    SetLastError(0xdeadbeef);
    ret = CloseServiceHandle(handle);
    ok(ret, "Expected success got error %u\n", GetLastError());
}
