
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWLAN_INTERFACE_INFO_LIST ;
typedef int * PVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ WlanEnumInterfaces (int ,int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanEnumInterfaces_test(void)
{
    DWORD ret;
    PWLAN_INTERFACE_INFO_LIST pInterfaceList;


    ret = WlanEnumInterfaces((HANDLE) -1, (PVOID) 1, &pInterfaceList);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanEnumInterfaces((HANDLE) -1, ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}
