
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WLAN_CONNECTION_PARAMETERS ;
typedef int * PVOID ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int InterfaceGuid ;
 scalar_t__ WlanConnect (int *,int *,int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanConnect_test(void)
{
    DWORD ret;
    WLAN_CONNECTION_PARAMETERS pConnectParams;


    ret = WlanConnect((HANDLE) -1, &InterfaceGuid, &pConnectParams, (PVOID) 1);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanConnect((HANDLE) -1, ((void*)0), &pConnectParams, ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanConnect(((void*)0), &InterfaceGuid, &pConnectParams, ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanConnect((HANDLE) -1, &InterfaceGuid, ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}
