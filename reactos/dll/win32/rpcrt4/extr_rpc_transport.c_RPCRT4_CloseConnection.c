
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; } ;
typedef TYPE_1__ RpcConnection ;
typedef int RPC_STATUS ;


 int DeleteSecurityContext (int *) ;
 int RPC_S_OK ;
 int SecInvalidateHandle (int *) ;
 scalar_t__ SecIsValidHandle (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int rpcrt4_conn_close (TYPE_1__*) ;

RPC_STATUS RPCRT4_CloseConnection(RpcConnection* Connection)
{
  TRACE("(Connection == ^%p)\n", Connection);
  if (SecIsValidHandle(&Connection->ctx))
  {
    DeleteSecurityContext(&Connection->ctx);
    SecInvalidateHandle(&Connection->ctx);
  }
  rpcrt4_conn_close(Connection);
  return RPC_S_OK;
}
