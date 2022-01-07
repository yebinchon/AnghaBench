
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int InterfaceGuid ;
 scalar_t__ WlanRenameProfile (int ,int *,char*,char*,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanRenameProfile_test(void)
{
    DWORD ret;


    ret = WlanRenameProfile((HANDLE) -1, &InterfaceGuid, L"test", L"test1", (PVOID) 1);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanRenameProfile((HANDLE) -1, ((void*)0), L"test", L"test1", ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanRenameProfile((HANDLE) -1, &InterfaceGuid, ((void*)0), L"test1", ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanRenameProfile((HANDLE) -1, &InterfaceGuid, L"test", ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}
