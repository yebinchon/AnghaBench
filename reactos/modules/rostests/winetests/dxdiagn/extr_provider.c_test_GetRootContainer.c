
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int params ;
struct TYPE_3__ {int dwSize; int * pReserved; int bAllowWHQLChecks; int dwDxDiagHeaderVersion; } ;
typedef int LPVOID ;
typedef int IDxDiagProvider ;
typedef int IDxDiagContainer ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DXDIAG_INIT_PARAMS ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DxDiagProvider ;
 scalar_t__ CO_E_NOTINITIALIZED ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int DXDIAG_DX9_SDK_VERSION ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IDxDiagContainer_Release (int *) ;
 scalar_t__ IDxDiagProvider_GetRootContainer (int *,int **) ;
 scalar_t__ IDxDiagProvider_Initialize (int *,TYPE_1__*) ;
 int IDxDiagProvider_Release (int *) ;
 int IID_IDxDiagProvider ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__,...) ;
 int skip (char*) ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static void test_GetRootContainer(void)
{
    HRESULT hr;
    IDxDiagProvider *pddp;
    IDxDiagContainer *pddc, *pddc2;
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


    hr = IDxDiagProvider_GetRootContainer(pddp, ((void*)0));
    ok(hr == CO_E_NOTINITIALIZED,
       "Expected IDxDiagProvider::GetRootContainer to return CO_E_NOTINITIALIZED, got %x\n", hr);

    hr = IDxDiagProvider_GetRootContainer(pddp, &pddc);
    ok(hr == CO_E_NOTINITIALIZED,
       "Expected IDxDiagProvider::GetRootContainer to return CO_E_NOTINITIALIZED, got %x\n", hr);

    params.dwSize = sizeof(params);
    params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
    params.bAllowWHQLChecks = FALSE;
    params.pReserved = ((void*)0);
    hr = IDxDiagProvider_Initialize(pddp, &params);
    ok(hr == S_OK, "Expected IDxDiagProvider::Initialize to return S_OK, got %x\n", hr);
    if (FAILED(hr))
    {
        skip("IDxDiagProvider::Initialize failed\n");
        IDxDiagProvider_Release(pddp);
        return;
    }


    if (0)
    {
        hr = IDxDiagProvider_GetRootContainer(pddp, ((void*)0));
        trace("IDxDiagProvider::GetRootContainer returned %x\n", hr);
    }

    hr = IDxDiagProvider_GetRootContainer(pddp, &pddc);
    ok(hr == S_OK, "Expected IDxDiagProvider::GetRootContainer to return S_OK, got %x\n", hr);



    hr = IDxDiagProvider_GetRootContainer(pddp, &pddc2);
    ok(hr == S_OK, "Expected IDxDiagProvider::GetRootContainer to return S_OK, got %x\n", hr);
    ok(pddc != pddc2, "Expected the two pointers (%p vs. %p) to be unequal\n", pddc, pddc2);

    IDxDiagContainer_Release(pddc2);
    IDxDiagContainer_Release(pddc);
    IDxDiagProvider_Release(pddp);
}
