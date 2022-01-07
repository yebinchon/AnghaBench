
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int params ;
struct TYPE_3__ {int dwSize; int * pReserved; int bAllowWHQLChecks; int dwDxDiagHeaderVersion; } ;
typedef int LPVOID ;
typedef int HRESULT ;
typedef TYPE_1__ DXDIAG_INIT_PARAMS ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DxDiagProvider ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 int DXDIAG_DX9_SDK_VERSION ;
 int FALSE ;
 int IDxDiagProvider_GetRootContainer (int ,int *) ;
 int IDxDiagProvider_Initialize (int ,TYPE_1__*) ;
 int IDxDiagProvider_Release (int ) ;
 int IID_IDxDiagProvider ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 int pddc ;
 int pddp ;

__attribute__((used)) static BOOL create_root_IDxDiagContainer(void)
{
    HRESULT hr;
    DXDIAG_INIT_PARAMS params;

    hr = CoCreateInstance(&CLSID_DxDiagProvider, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IDxDiagProvider, (LPVOID*)&pddp);
    if (SUCCEEDED(hr))
    {
        params.dwSize = sizeof(params);
        params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
        params.bAllowWHQLChecks = FALSE;
        params.pReserved = ((void*)0);
        hr = IDxDiagProvider_Initialize(pddp, &params);
        if (SUCCEEDED(hr))
        {
            hr = IDxDiagProvider_GetRootContainer(pddp, &pddc);
            if (SUCCEEDED(hr))
                return TRUE;
        }
        IDxDiagProvider_Release(pddp);
    }
    return FALSE;
}
