
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SERVICE_EXISTS ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int WlanCloseHandle (int ,int *) ;
 scalar_t__ WlanOpenHandle (int,int *,scalar_t__*,int *) ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void WlanOpenHandle_test(void)
{
    DWORD ret;
    DWORD dwNegotiatedVersion;
    HANDLE hClientHandle;


    ret = WlanOpenHandle(1, ((void*)0), &dwNegotiatedVersion, &hClientHandle);
    if (ret == ERROR_SERVICE_EXISTS)
    {
        skip("Skipping wlanapi tests, WlanSvc is not running\n");
        return;
    }
    ok(ret == ERROR_SUCCESS, "WlanOpenHandle failed, error %ld\n", ret);
    WlanCloseHandle(hClientHandle, ((void*)0));


    ret = WlanOpenHandle(1, ((void*)0), ((void*)0), &hClientHandle);
    ok(ret == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", GetLastError());


    ret = WlanOpenHandle(1, ((void*)0), &dwNegotiatedVersion, ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", GetLastError());


    ret = WlanOpenHandle(1, (PVOID) 1, &dwNegotiatedVersion, &hClientHandle);
    ok(ret == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", GetLastError());
}
