
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Assoc; int NetworkOptions; void* Endpoint; void* NetworkAddr; int Protseq; } ;
typedef TYPE_1__ RpcBinding ;
typedef scalar_t__ RPC_STATUS ;
typedef char* LPCSTR ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 scalar_t__ RPCRT4_GetAssociation (int ,void*,void*,int ,int *) ;
 void* RPCRT4_strdupA (char*) ;
 int RPCRT4_strdupAtoW (char*) ;
 int RPCRT4_strfree (void*) ;
 scalar_t__ RPC_S_OK ;
 int TRACE (char*,TYPE_1__*,int ,int ,int ) ;
 int debugstr_a (char*) ;

__attribute__((used)) static RPC_STATUS RPCRT4_CompleteBindingA(RpcBinding* Binding, LPCSTR NetworkAddr,
                                          LPCSTR Endpoint, LPCSTR NetworkOptions)
{
  RPC_STATUS status;

  TRACE("(RpcBinding == ^%p, NetworkAddr == %s, EndPoint == %s, NetworkOptions == %s)\n", Binding,
   debugstr_a(NetworkAddr), debugstr_a(Endpoint), debugstr_a(NetworkOptions));

  RPCRT4_strfree(Binding->NetworkAddr);
  Binding->NetworkAddr = RPCRT4_strdupA(NetworkAddr);
  RPCRT4_strfree(Binding->Endpoint);
  Binding->Endpoint = RPCRT4_strdupA(Endpoint);
  HeapFree(GetProcessHeap(), 0, Binding->NetworkOptions);
  Binding->NetworkOptions = RPCRT4_strdupAtoW(NetworkOptions);


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
