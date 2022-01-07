
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int ICorDebug ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ ICorDebug_Initialize (int *) ;
 int ICorDebug_Release (int *) ;
 scalar_t__ ICorDebug_SetManagedHandler (int *,int *) ;
 int IID_ICorDebug ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int ManagedCallback ;
 scalar_t__ S_OK ;
 int check_process_enum (int *,int ) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCreateDebuggingInterfaceFromVersion (int,int ,int **) ;
 int skip (char*) ;
 int v2_0 ;

__attribute__((used)) static void test_createDebugger(void)
{
    HRESULT hr;
    IUnknown *pUnk;
    ICorDebug *pCorDebug;

    hr = pCreateDebuggingInterfaceFromVersion(0, v2_0, &pUnk);
    ok(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = pCreateDebuggingInterfaceFromVersion(1, v2_0, &pUnk);
    ok(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = pCreateDebuggingInterfaceFromVersion(2, v2_0, &pUnk);
    ok(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = pCreateDebuggingInterfaceFromVersion(4, v2_0, &pUnk);
    ok(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = pCreateDebuggingInterfaceFromVersion(3, v2_0, ((void*)0));
    ok(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = pCreateDebuggingInterfaceFromVersion(3, v2_0, &pUnk);
    if(hr == S_OK)
    {
        hr = IUnknown_QueryInterface(pUnk, &IID_ICorDebug, (void**)&pCorDebug);
        ok(hr == S_OK, "expected S_OK got %08x\n", hr);
        if(hr == S_OK)
        {
            hr = ICorDebug_Initialize(pCorDebug);
            ok(hr == S_OK, "expected S_OK got %08x\n", hr);
            if(hr == S_OK)
            {
                hr = ICorDebug_SetManagedHandler(pCorDebug, ((void*)0));
                ok(hr == E_INVALIDARG, "expected E_INVALIDARG got %08x\n", hr);

                hr = ICorDebug_SetManagedHandler(pCorDebug, &ManagedCallback);
                ok(hr == S_OK, "expected S_OK got %08x\n", hr);


                check_process_enum(pCorDebug, 0);
            }

            ICorDebug_Release(pCorDebug);
        }
        IUnknown_Release(pUnk);
    }
    else
    {
        skip(".NET 2.0 or mono not installed.\n");
    }
}
