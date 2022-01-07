
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetZoneManager ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 int IInternetZoneManager_CreateZoneEnumerator (int *,scalar_t__*,scalar_t__*,int ) ;
 int IInternetZoneManager_DestroyZoneEnumerator (int *,scalar_t__) ;
 int IInternetZoneManager_GetZoneAt (int *,scalar_t__,scalar_t__,scalar_t__*) ;
 int IInternetZoneManager_Release (int *) ;
 int S_OK ;
 int ok (int,char*,scalar_t__,...) ;
 int pCoInternetCreateZoneManager (int *,int **,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_GetZoneAt(void)
{
    IInternetZoneManager *zonemgr = ((void*)0);
    HRESULT hr;
    DWORD dwEnum;
    DWORD dwCount;
    DWORD dwZone;
    DWORD i;

    trace("testing GetZoneAt...\n");

    hr = pCoInternetCreateZoneManager(((void*)0), &zonemgr, 0);
    ok(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FAILED(hr))
        return;

    hr = IInternetZoneManager_CreateZoneEnumerator(zonemgr, &dwEnum, &dwCount, 0);
    if (FAILED(hr))
        goto cleanup;

    if (0) {

        IInternetZoneManager_GetZoneAt(zonemgr, dwEnum, 0, ((void*)0));
    }

    dwZone = 0xdeadbeef;
    hr = IInternetZoneManager_GetZoneAt(zonemgr, 0xdeadbeef, 0, &dwZone);
    ok(hr == E_INVALIDARG,
        "got 0x%x with 0x%x (expected E_INVALIDARG)\n", hr, dwZone);

    for (i = 0; i < dwCount; i++)
    {
        dwZone = 0xdeadbeef;
        hr = IInternetZoneManager_GetZoneAt(zonemgr, dwEnum, i, &dwZone);
        ok(hr == S_OK, "#%d: got x%x with %d (expected S_OK)\n", i, hr, dwZone);
    }

    dwZone = 0xdeadbeef;

    hr = IInternetZoneManager_GetZoneAt(zonemgr, dwEnum, dwCount, &dwZone);
    ok(hr == E_INVALIDARG,
        "got 0x%x with 0x%x (expected E_INVALIDARG)\n", hr, dwZone);

    hr = IInternetZoneManager_DestroyZoneEnumerator(zonemgr, dwEnum);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

cleanup:
    hr = IInternetZoneManager_Release(zonemgr);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
}
