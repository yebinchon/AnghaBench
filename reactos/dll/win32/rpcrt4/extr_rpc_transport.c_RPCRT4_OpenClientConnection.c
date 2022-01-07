
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; int server; } ;
struct TYPE_6__ {int (* open_connection_client ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_STATUS ;


 int TRACE (char*,TYPE_2__*) ;
 int assert (int) ;
 int stub1 (TYPE_2__*) ;

RPC_STATUS RPCRT4_OpenClientConnection(RpcConnection* Connection)
{
  TRACE("(Connection == ^%p)\n", Connection);

  assert(!Connection->server);
  return Connection->ops->open_connection_client(Connection);
}
