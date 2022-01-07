
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * handle_t ;
typedef scalar_t__ RPC_STATUS ;
typedef int LPWSTR ;


 scalar_t__ RpcBindingFromStringBindingW (int ,int **) ;
 scalar_t__ RpcStringBindingComposeW (int *,char*,int ,char*,int *,int *) ;
 scalar_t__ RpcStringFreeW (int *) ;
 int TRACE (char*,...) ;

__attribute__((used)) static
RPC_STATUS
DsSetupBind(
    LPWSTR lpServerName,
    handle_t *hBinding)
{
    LPWSTR pszStringBinding;
    RPC_STATUS status;

    TRACE("DsSetupBind() called\n");

    *hBinding = ((void*)0);

    status = RpcStringBindingComposeW(((void*)0),
                                      L"ncacn_np",
                                      lpServerName,
                                      L"\\pipe\\lsarpc",
                                      ((void*)0),
                                      &pszStringBinding);
    if (status)
    {
        TRACE("RpcStringBindingCompose returned 0x%x\n", status);
        return status;
    }


    status = RpcBindingFromStringBindingW(pszStringBinding,
                                          hBinding);
    if (status)
    {
        TRACE("RpcBindingFromStringBinding returned 0x%x\n", status);
    }

    status = RpcStringFreeW(&pszStringBinding);
    if (status)
    {
        TRACE("RpcStringFree returned 0x%x\n", status);
    }

    return status;
}
