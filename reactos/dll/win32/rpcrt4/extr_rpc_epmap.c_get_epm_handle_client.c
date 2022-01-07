
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* endpoint; int protseq; } ;
struct TYPE_10__ {int * AuthInfo; int Protseq; scalar_t__ server; } ;
typedef TYPE_1__ RpcBinding ;
typedef scalar_t__ RPC_STATUS ;
typedef TYPE_1__* RPC_BINDING_HANDLE ;


 unsigned int ARRAY_SIZE (TYPE_5__*) ;
 int FIXME (char*,int ) ;
 int RPCRT4_ResolveBinding (TYPE_1__*,char const*) ;
 scalar_t__ RPC_S_INVALID_BINDING ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_PROTSEQ_NOT_SUPPORTED ;
 int RpcAuthInfo_Release (int *) ;
 scalar_t__ RpcBindingCopy (TYPE_1__*,TYPE_1__**) ;
 int TRACE (char*) ;
 int debugstr_a (int ) ;
 TYPE_5__* epm_endpoints ;
 int strcmp (int ,int ) ;

__attribute__((used)) static RPC_STATUS get_epm_handle_client(RPC_BINDING_HANDLE handle, RPC_BINDING_HANDLE *epm_handle)
{
    RpcBinding *bind = handle;
    const char * pszEndpoint = ((void*)0);
    RPC_STATUS status;
    RpcBinding* epm_bind;
    unsigned int i;

    if (bind->server)
        return RPC_S_INVALID_BINDING;

    for (i = 0; i < ARRAY_SIZE(epm_endpoints); i++)
        if (!strcmp(bind->Protseq, epm_endpoints[i].protseq))
            pszEndpoint = epm_endpoints[i].endpoint;

    if (!pszEndpoint)
    {
        FIXME("no endpoint for the endpoint-mapper found for protseq %s\n", debugstr_a(bind->Protseq));
        return RPC_S_PROTSEQ_NOT_SUPPORTED;
    }

    status = RpcBindingCopy(handle, epm_handle);
    if (status != RPC_S_OK) return status;

    epm_bind = *epm_handle;
    if (epm_bind->AuthInfo)
    {


        RpcAuthInfo_Release(epm_bind->AuthInfo);
        epm_bind->AuthInfo = ((void*)0);
    }
    RPCRT4_ResolveBinding(epm_bind, pszEndpoint);
    TRACE("RPC_S_OK\n");
    return RPC_S_OK;
}
