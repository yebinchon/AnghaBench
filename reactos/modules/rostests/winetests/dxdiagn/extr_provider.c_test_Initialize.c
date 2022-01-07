
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int params ;
typedef int VOID ;
struct TYPE_3__ {int dwSize; int * pReserved; void* bAllowWHQLChecks; void* dwDxDiagHeaderVersion; } ;
typedef int LPVOID ;
typedef int IDxDiagProvider ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DXDIAG_INIT_PARAMS ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DxDiagProvider ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 void* DXDIAG_DX9_SDK_VERSION ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_POINTER ;
 scalar_t__ FAILED (scalar_t__) ;
 void* FALSE ;
 scalar_t__ IDxDiagProvider_Initialize (int *,TYPE_1__*) ;
 int IDxDiagProvider_Release (int *) ;
 int IID_IDxDiagProvider ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static void test_Initialize(void)
{
    HRESULT hr;
    IDxDiagProvider *pddp;
    DXDIAG_INIT_PARAMS params;

    hr = CoCreateInstance(&CLSID_DxDiagProvider, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IDxDiagProvider, (LPVOID*)&pddp);
    ok(hr == S_OK ||
       broken(hr == REGDB_E_CLASSNOTREG),
       "Creating a IDxDiagProvider instance failed with %x\n", hr);
    if (FAILED(hr))
    {
        skip("Failed to create a IDxDiagProvider instance\n");
        return;
    }


    hr = IDxDiagProvider_Initialize(pddp, ((void*)0));
    ok(hr == E_POINTER,
       "Expected IDxDiagProvider::Initialize to return E_POINTER, got %x\n", hr);


    params.dwSize = 0;
    hr = IDxDiagProvider_Initialize(pddp, &params);
    ok(hr == E_INVALIDARG,
       "Expected IDxDiagProvider::Initialize to return E_INVALIDARG, got %x\n", hr);

    params.dwSize = sizeof(params) + 1;
    hr = IDxDiagProvider_Initialize(pddp, &params);
    ok(hr == E_INVALIDARG,
       "Expected IDxDiagProvider::Initialize to return E_INVALIDARG, got %x\n", hr);


    params.dwSize = sizeof(params);
    params.dwDxDiagHeaderVersion = 0;
    params.bAllowWHQLChecks = FALSE;
    params.pReserved = ((void*)0);
    hr = IDxDiagProvider_Initialize(pddp, &params);
    ok(hr == E_INVALIDARG,
       "Expected IDxDiagProvider::Initialize to return E_INVALIDARG, got %x\n", hr);


    if (0)
    {
        params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
        params.bAllowWHQLChecks = FALSE;
        params.pReserved = (VOID*)0xdeadbeef;
        hr = IDxDiagProvider_Initialize(pddp, &params);
        trace("IDxDiagProvider::Initialize returned %x\n", hr);
    }


    params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
    params.bAllowWHQLChecks = FALSE;
    params.pReserved = ((void*)0);
    hr = IDxDiagProvider_Initialize(pddp, &params);
    ok(hr == S_OK, "Expected IDxDiagProvider::Initialize to return S_OK, got %x\n", hr);


    hr = IDxDiagProvider_Initialize(pddp, &params);
    ok(hr == S_OK, "Expected IDxDiagProvider::Initialize to return S_OK, got %x\n", hr);

    IDxDiagProvider_Release(pddp);
}
