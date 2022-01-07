
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * FromConn; int CookieAuth; int QOS; int AuthInfo; int Assoc; int server; } ;
typedef int RpcConnection ;
typedef TYPE_1__ RpcBinding ;
typedef int RPC_SYNTAX_IDENTIFIER ;
typedef int RPC_STATUS ;
typedef int BOOL ;


 int ERR (char*) ;
 int RPC_S_INTERNAL_ERROR ;
 int RPC_S_OK ;
 int RpcAssoc_GetClientConnection (int ,int const*,int const*,int ,int ,int ,int **,int *) ;
 int TRACE (char*,TYPE_1__*) ;

RPC_STATUS RPCRT4_OpenBinding(RpcBinding* Binding, RpcConnection** Connection,
                              const RPC_SYNTAX_IDENTIFIER *TransferSyntax,
                              const RPC_SYNTAX_IDENTIFIER *InterfaceId, BOOL *from_cache)
{
  TRACE("(Binding == ^%p)\n", Binding);

  if (!Binding->server) {
     return RpcAssoc_GetClientConnection(Binding->Assoc, InterfaceId,
         TransferSyntax, Binding->AuthInfo, Binding->QOS, Binding->CookieAuth, Connection, from_cache);
  } else {

    if (Binding->FromConn) {
      *Connection = Binding->FromConn;
      return RPC_S_OK;
    } else {
       ERR("no connection in binding\n");
       return RPC_S_INTERNAL_ERROR;
    }
  }
}
