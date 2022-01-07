
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Assoc; int NetworkOptions; void* Endpoint; void* NetworkAddr; int Protseq; } ;
typedef TYPE_1__ RpcBinding ;
typedef scalar_t__ RPC_STATUS ;
typedef char* LPCWSTR ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 scalar_t__ RPCRT4_GetAssociation (int ,void*,void*,int ,int *) ;
 int RPCRT4_strdupW (char*) ;
 void* RPCRT4_strdupWtoA (char*) ;
 int RPCRT4_strfree (void*) ;
 scalar_t__ RPC_S_OK ;
 int TRACE (char*,TYPE_1__*,int ,int ,int ) ;
 int debugstr_w (char*) ;

__attribute__((used)) static RPC_STATUS RPCRT4_CompleteBindingW(RpcBinding* Binding, LPCWSTR NetworkAddr,
                                          LPCWSTR Endpoint, LPCWSTR NetworkOptions)
{
  RPC_STATUS status;

  TRACE("(RpcBinding == ^%p, NetworkAddr == %s, EndPoint == %s, NetworkOptions == %s)\n", Binding,
   debugstr_w(NetworkAddr), debugstr_w(Endpoint), debugstr_w(NetworkOptions));

  RPCRT4_strfree(Binding->NetworkAddr);
  Binding->NetworkAddr = RPCRT4_strdupWtoA(NetworkAddr);
  RPCRT4_strfree(Binding->Endpoint);
  Binding->Endpoint = RPCRT4_strdupWtoA(Endpoint);
  HeapFree(GetProcessHeap(), 0, Binding->NetworkOptions);
  Binding->NetworkOptions = RPCRT4_strdupW(NetworkOptions);


  if (Endpoint && Endpoint[0] != '\0')
  {
    status = RPCRT4_GetAssociation(Binding->Protseq, Binding->NetworkAddr,
                                   Binding->Endpoint, Binding->NetworkOptions,
                                   &Binding->Assoc);
    if (status != RPC_S_OK)
        return status;
  }

  return RPC_S_OK;
}
