
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWLAN_INTERFACE_CAPABILITY ;
typedef int * PVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int InterfaceGuid ;
 scalar_t__ WlanGetInterfaceCapability (int ,int *,int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanGetInterfaceCapability_test(void)
{
    DWORD ret;
    PWLAN_INTERFACE_CAPABILITY pInterfaceCapability;


    ret = WlanGetInterfaceCapability((HANDLE) -1, &InterfaceGuid, (PVOID) 1, &pInterfaceCapability);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanGetInterfaceCapability((HANDLE) -1, ((void*)0), ((void*)0), &pInterfaceCapability);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanGetInterfaceCapability((HANDLE) -1, &InterfaceGuid, ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}
