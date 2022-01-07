
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int InterfaceGuid ;
 scalar_t__ WlanGetProfile (int ,int *,char*,int *,int **,int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanGetProfile_test(void)
{
    DWORD ret;
    WCHAR *strProfileXml;


    ret = WlanGetProfile((HANDLE) -1, &InterfaceGuid, L"", (PVOID) 1, &strProfileXml, ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanGetProfile((HANDLE) -1, ((void*)0), L"test", ((void*)0), &strProfileXml, ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanGetProfile((HANDLE) -1, &InterfaceGuid, L"test", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}
