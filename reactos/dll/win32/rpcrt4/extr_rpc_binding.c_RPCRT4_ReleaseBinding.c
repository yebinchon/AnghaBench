
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ QOS; scalar_t__ AuthInfo; struct TYPE_5__* CookieAuth; struct TYPE_5__* NetworkOptions; int Protseq; int NetworkAddr; int Endpoint; scalar_t__ Assoc; int refs; } ;
typedef TYPE_1__ RpcBinding ;
typedef int RPC_STATUS ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int RPCRT4_strfree (int ) ;
 int RPC_S_OK ;
 int RpcAssoc_Release (scalar_t__) ;
 int RpcAuthInfo_Release (scalar_t__) ;
 int RpcQualityOfService_Release (scalar_t__) ;
 int TRACE (char*,TYPE_1__*) ;

RPC_STATUS RPCRT4_ReleaseBinding(RpcBinding* Binding)
{
  if (InterlockedDecrement(&Binding->refs))
    return RPC_S_OK;

  TRACE("binding: %p\n", Binding);
  if (Binding->Assoc) RpcAssoc_Release(Binding->Assoc);
  RPCRT4_strfree(Binding->Endpoint);
  RPCRT4_strfree(Binding->NetworkAddr);
  RPCRT4_strfree(Binding->Protseq);
  HeapFree(GetProcessHeap(), 0, Binding->NetworkOptions);
  HeapFree(GetProcessHeap(), 0, Binding->CookieAuth);
  if (Binding->AuthInfo) RpcAuthInfo_Release(Binding->AuthInfo);
  if (Binding->QOS) RpcQualityOfService_Release(Binding->QOS);
  HeapFree(GetProcessHeap(), 0, Binding);
  return RPC_S_OK;
}
