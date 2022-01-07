
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Assoc; int NetworkOptions; int Endpoint; int NetworkAddr; int Protseq; } ;
typedef TYPE_1__ RpcBinding ;
typedef scalar_t__ RPC_STATUS ;
typedef int LPCSTR ;


 scalar_t__ RPCRT4_GetAssociation (int ,int ,int ,int ,int **) ;
 int RPCRT4_strdupA (int ) ;
 int RPCRT4_strfree (int ) ;
 scalar_t__ RPC_S_OK ;
 int RpcAssoc_Release (int *) ;
 int TRACE (char*,TYPE_1__*,int ) ;

RPC_STATUS RPCRT4_ResolveBinding(RpcBinding* Binding, LPCSTR Endpoint)
{
  RPC_STATUS status;

  TRACE("(RpcBinding == ^%p, EndPoint == \"%s\"\n", Binding, Endpoint);

  RPCRT4_strfree(Binding->Endpoint);
  Binding->Endpoint = RPCRT4_strdupA(Endpoint);

  if (Binding->Assoc) RpcAssoc_Release(Binding->Assoc);
  Binding->Assoc = ((void*)0);
  status = RPCRT4_GetAssociation(Binding->Protseq, Binding->NetworkAddr,
                                 Binding->Endpoint, Binding->NetworkOptions,
                                 &Binding->Assoc);
  if (status != RPC_S_OK)
      return status;

  return RPC_S_OK;
}
