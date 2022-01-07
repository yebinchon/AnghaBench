
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;
typedef int * RPC_BINDING_HANDLE ;


 int RPC_S_OK ;
 int RpcBindingFree (int *) ;

RPC_STATUS
PnpUnbindRpc(RPC_BINDING_HANDLE *BindingHandle)
{
    if (BindingHandle != ((void*)0))
    {
        RpcBindingFree(*BindingHandle);
        *BindingHandle = ((void*)0);
    }

    return RPC_S_OK;
}
