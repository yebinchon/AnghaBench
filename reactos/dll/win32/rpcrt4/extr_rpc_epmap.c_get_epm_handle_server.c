
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;
typedef int RPC_BINDING_HANDLE ;


 int RpcBindingFromStringBindingA (unsigned char*,int *) ;

__attribute__((used)) static RPC_STATUS get_epm_handle_server(RPC_BINDING_HANDLE *epm_handle)
{
    unsigned char string_binding[] = "ncacn_np:.[\\\\pipe\\\\epmapper]";

    return RpcBindingFromStringBindingA(string_binding, epm_handle);
}
