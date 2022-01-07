
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NetworkAddr; int Endpoint; } ;
typedef int RpcConnection_np ;
typedef TYPE_1__ RpcConnection ;
typedef int RPC_STATUS ;
typedef scalar_t__ DWORD ;


 int ERR (char*,int ) ;
 int GetComputerNameA (int ,scalar_t__*) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,scalar_t__) ;
 scalar_t__ MAX_COMPUTERNAME_LENGTH ;
 int RPC_S_OUT_OF_RESOURCES ;
 int TRACE (char*,int ) ;
 int rpcrt4_conn_create_pipe (TYPE_1__*) ;
 int rpcrt4_conn_np_handoff (int *,int *) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncalrpc_handoff(RpcConnection *old_conn, RpcConnection *new_conn)
{
  DWORD len = MAX_COMPUTERNAME_LENGTH + 1;
  RPC_STATUS status;

  TRACE("%s\n", old_conn->Endpoint);

  rpcrt4_conn_np_handoff((RpcConnection_np *)old_conn, (RpcConnection_np *)new_conn);
  status = rpcrt4_conn_create_pipe(old_conn);


  new_conn->NetworkAddr = HeapAlloc(GetProcessHeap(), 0, len);
  if (!GetComputerNameA(new_conn->NetworkAddr, &len))
  {
    ERR("Failed to retrieve the computer name, error %u\n", GetLastError());
    return RPC_S_OUT_OF_RESOURCES;
  }

  return status;
}
