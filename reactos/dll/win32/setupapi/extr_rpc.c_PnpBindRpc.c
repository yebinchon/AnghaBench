
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RPC_STATUS ;
typedef int RPC_BINDING_HANDLE ;
typedef int * PWSTR ;
typedef int LPWSTR ;
typedef scalar_t__ LPCWSTR ;


 scalar_t__ RPC_S_OK ;
 scalar_t__ RpcBindingFromStringBindingW (int *,int *) ;
 scalar_t__ RpcStringBindingComposeW (int *,char*,int ,char*,int *,int **) ;
 int RpcStringFreeW (int **) ;

RPC_STATUS
PnpBindRpc(LPCWSTR pszMachine,
           RPC_BINDING_HANDLE* BindingHandle)
{
    PWSTR pszStringBinding = ((void*)0);
    RPC_STATUS Status;

    Status = RpcStringBindingComposeW(((void*)0),
                                      L"ncacn_np",
                                      (LPWSTR)pszMachine,
                                      L"\\pipe\\plugplay",
                                      ((void*)0),
                                      &pszStringBinding);
    if (Status != RPC_S_OK)
        return Status;

    Status = RpcBindingFromStringBindingW(pszStringBinding,
                                          BindingHandle);

    RpcStringFreeW(&pszStringBinding);

    return Status;
}
