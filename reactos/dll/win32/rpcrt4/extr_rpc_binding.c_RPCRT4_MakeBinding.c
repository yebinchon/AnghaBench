
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* FromConn; void* Endpoint; void* NetworkAddr; void* Protseq; } ;
struct TYPE_7__ {int Endpoint; int NetworkAddr; int server; } ;
typedef TYPE_1__ RpcConnection ;
typedef TYPE_2__ RpcBinding ;
typedef int RPC_STATUS ;


 int RPCRT4_AllocBinding (TYPE_2__**,int ) ;
 void* RPCRT4_strdupA (int ) ;
 int RPC_S_OK ;
 int TRACE (char*,...) ;
 int rpcrt4_conn_get_name (TYPE_1__*) ;

RPC_STATUS RPCRT4_MakeBinding(RpcBinding** Binding, RpcConnection* Connection)
{
  RpcBinding* NewBinding;
  TRACE("(RpcBinding == ^%p, Connection == ^%p)\n", Binding, Connection);

  RPCRT4_AllocBinding(&NewBinding, Connection->server);
  NewBinding->Protseq = RPCRT4_strdupA(rpcrt4_conn_get_name(Connection));
  NewBinding->NetworkAddr = RPCRT4_strdupA(Connection->NetworkAddr);
  NewBinding->Endpoint = RPCRT4_strdupA(Connection->Endpoint);
  NewBinding->FromConn = Connection;

  TRACE("binding: %p\n", NewBinding);
  *Binding = NewBinding;

  return RPC_S_OK;
}
