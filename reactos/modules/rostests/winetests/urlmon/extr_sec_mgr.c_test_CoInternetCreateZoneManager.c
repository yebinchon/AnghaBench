
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IInternetZoneManager ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOINTERFACE ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IInternetZoneManager ;
 int IID_IInternetZoneManagerEx ;
 int IID_IInternetZoneManagerEx2 ;
 int IID_IUnknown ;
 scalar_t__ IInternetZoneManager_QueryInterface (int *,int *,void**) ;
 scalar_t__ IInternetZoneManager_Release (int *) ;
 int IUnknown_Release (int *) ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCoInternetCreateZoneManager (int *,int **,int ) ;
 int trace (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CoInternetCreateZoneManager(void)
{
    IInternetZoneManager *zonemgr = ((void*)0);
    IUnknown *punk = ((void*)0);
    HRESULT hr;

    trace("simple zone manager tests...\n");

    hr = pCoInternetCreateZoneManager(((void*)0), &zonemgr, 0);
    ok(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FAILED(hr))
        return;

    hr = IInternetZoneManager_QueryInterface(zonemgr, &IID_IUnknown, (void **) &punk);
    ok(SUCCEEDED(hr), "got 0x%x with %p (expected Success)\n", hr, punk);
    if (punk)
        IUnknown_Release(punk);

    hr = IInternetZoneManager_QueryInterface(zonemgr, &IID_IInternetZoneManager, (void **) &punk);
    ok(SUCCEEDED(hr), "got 0x%x with %p (expected Success)\n", hr, punk);
    if (punk)
        IUnknown_Release(punk);


    hr = IInternetZoneManager_QueryInterface(zonemgr, &IID_IInternetZoneManagerEx, (void **) &punk);
    if (SUCCEEDED(hr)) {
        IUnknown_Release(punk);

        hr = IInternetZoneManager_QueryInterface(zonemgr, &IID_IInternetZoneManagerEx2, (void **) &punk);
        ok(hr == S_OK || broken(hr == E_NOINTERFACE ),
           "got 0x%x (expected S_OK)\n", hr);
        if (punk)
            IUnknown_Release(punk);
        else
            win_skip("InternetZoneManagerEx2 not supported\n");

    }
    else
        win_skip("InternetZoneManagerEx not supported\n");

    hr = IInternetZoneManager_Release(zonemgr);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

}
