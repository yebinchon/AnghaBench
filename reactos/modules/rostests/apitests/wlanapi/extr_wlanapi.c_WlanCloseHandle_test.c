
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int * PVOID ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ WlanCloseHandle (int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanCloseHandle_test(void)
{
    DWORD ret;
    HANDLE hClientHandle = (HANDLE)(ULONG_PTR)0xdeadbeefdeadbeef;


    ret = WlanCloseHandle(hClientHandle, (PVOID) 1);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanCloseHandle(((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanCloseHandle(hClientHandle, ((void*)0));
    ok(ret == ERROR_INVALID_HANDLE, "expected failure\n");
}
