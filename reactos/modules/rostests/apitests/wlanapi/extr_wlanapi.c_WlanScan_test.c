
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WLAN_RAW_DATA ;
typedef int * PVOID ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef int DOT11_SSID ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int InterfaceGuid ;
 scalar_t__ WlanScan (int *,int *,int *,int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void WlanScan_test(void)
{
    DWORD ret;
    DOT11_SSID Ssid;
    WLAN_RAW_DATA RawData;


    ret = WlanScan((HANDLE) -1, &InterfaceGuid, &Ssid, &RawData, (PVOID) 1);
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanScan((HANDLE) -1, ((void*)0), &Ssid, &RawData, ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");


    ret = WlanScan(((void*)0), &InterfaceGuid, &Ssid, &RawData, ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}
