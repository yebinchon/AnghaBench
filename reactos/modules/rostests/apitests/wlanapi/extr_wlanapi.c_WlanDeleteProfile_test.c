
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int InterfaceGuid ;
 scalar_t__ WlanDeleteProfile (int ,int *,char*,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanDeleteProfile_test(void)
{
    DWORD ret;


    ret = WlanDeleteProfile((HANDLE) -1, &InterfaceGuid, L"test", (PVOID) 1);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanDeleteProfile((HANDLE) -1, ((void*)0), L"test", ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanDeleteProfile((HANDLE) -1, &InterfaceGuid, ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}
