
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int cbSize; } ;
typedef TYPE_1__ ZONEATTRIBUTES ;
typedef int IInternetZoneManager ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CHAR ;


 int E_FAIL ;
 int E_INVALIDARG ;
 int E_POINTER ;
 scalar_t__ FAILED (int) ;
 int IInternetZoneManager_GetZoneAttributes (int *,int,TYPE_1__*) ;
 int IInternetZoneManager_Release (int *) ;
 int S_OK ;
 int memset (int *,int,int) ;
 int ok (int,char*,int,...) ;
 int pCoInternetCreateZoneManager (int *,int **,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_GetZoneAttributes(void)
{
    IInternetZoneManager *zonemgr = ((void*)0);
    CHAR buffer [sizeof(ZONEATTRIBUTES) + 32];
    ZONEATTRIBUTES* pZA = (ZONEATTRIBUTES*) buffer;
    HRESULT hr;
    DWORD i;

    trace("testing GetZoneAttributes...\n");

    hr = pCoInternetCreateZoneManager(((void*)0), &zonemgr, 0);
    ok(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FAILED(hr))
        return;


    for (i = 0; i < 5; i++) {
        memset(buffer, -1, sizeof(buffer));
        hr = IInternetZoneManager_GetZoneAttributes(zonemgr, i, pZA);
        ok(hr == S_OK, "#%d: got 0x%x (expected S_OK)\n", i, hr);
    }


    memset(buffer, -1, sizeof(buffer));
    pZA->cbSize = 0;
    hr = IInternetZoneManager_GetZoneAttributes(zonemgr, 0, pZA);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
    ok((pZA->cbSize == 0) || (pZA->cbSize == sizeof(ZONEATTRIBUTES)),
        "got cbSize = %d (expected 0)\n", pZA->cbSize);

    memset(buffer, -1, sizeof(buffer));
    pZA->cbSize = 64;
    hr = IInternetZoneManager_GetZoneAttributes(zonemgr, 0, pZA);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
    ok((pZA->cbSize == 64) || (pZA->cbSize == sizeof(ZONEATTRIBUTES)),
        "got cbSize = %d (expected 64)\n", pZA->cbSize);

    memset(buffer, -1, sizeof(buffer));
    hr = IInternetZoneManager_GetZoneAttributes(zonemgr, 0, pZA);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
    ok((pZA->cbSize == 0xffffffff) || (pZA->cbSize == sizeof(ZONEATTRIBUTES)),
        "got cbSize = 0x%x (expected 0xffffffff)\n", pZA->cbSize);


    memset(buffer, -1, sizeof(buffer));
    hr = IInternetZoneManager_GetZoneAttributes(zonemgr, 0xdeadbeef, pZA);
    ok(hr == S_OK || hr == E_FAIL || hr == E_POINTER,
        "got 0x%x (expected S_OK or E_FAIL)\n", hr);

    hr = IInternetZoneManager_GetZoneAttributes(zonemgr, 0, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);

    hr = IInternetZoneManager_Release(zonemgr);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
}
