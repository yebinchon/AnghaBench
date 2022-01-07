
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Assoc; int * FromConn; scalar_t__ server; } ;
typedef int RpcConnection ;
typedef TYPE_1__ RpcBinding ;
typedef int RPC_STATUS ;


 int RPCRT4_ReleaseConnection (int *) ;
 int RPC_S_OK ;
 int RpcAssoc_ReleaseIdleConnection (int ,int *) ;
 int TRACE (char*,TYPE_1__*) ;

RPC_STATUS RPCRT4_CloseBinding(RpcBinding* Binding, RpcConnection* Connection)
{
  TRACE("(Binding == ^%p)\n", Binding);
  if (!Connection) return RPC_S_OK;
  if (Binding->server) {

    if (Binding->FromConn != Connection)
      RPCRT4_ReleaseConnection(Connection);
  }
  else {
    RpcAssoc_ReleaseIdleConnection(Binding->Assoc, Connection);
  }
  return RPC_S_OK;
}
