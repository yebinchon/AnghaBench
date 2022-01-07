
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Endpoint; } ;
struct TYPE_5__ {scalar_t__ pipe; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_STATUS ;
typedef int LPSTR ;


 int I_RpcFree (int ) ;
 int RPC_S_OK ;
 int TRUE ;
 int ncalrpc_pipe_name (int ) ;
 int rpcrt4_conn_open_pipe (TYPE_2__*,int ,int ) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncalrpc_open(RpcConnection* Connection)
{
  RpcConnection_np *npc = (RpcConnection_np *) Connection;
  RPC_STATUS r;
  LPSTR pname;


  if (npc->pipe)
    return RPC_S_OK;

  pname = ncalrpc_pipe_name(Connection->Endpoint);
  r = rpcrt4_conn_open_pipe(Connection, pname, TRUE);
  I_RpcFree(pname);

  return r;
}
