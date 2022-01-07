
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int address ;
struct TYPE_3__ {int NetworkAddr; } ;
struct TYPE_4__ {int sock; TYPE_1__ common; } ;
typedef TYPE_2__ RpcConnection_tcp ;
typedef int RpcConnection ;
typedef int RPC_STATUS ;


 int ERR (char*,int) ;
 int FIONBIO ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int ) ;
 int INET6_ADDRSTRLEN ;
 int NI_NUMERICHOST ;
 int RPC_S_OK ;
 int RPC_S_OUT_OF_RESOURCES ;
 int TRACE (char*,int ) ;
 int accept (int,struct sockaddr*,int*) ;
 int getnameinfo (struct sockaddr*,int,int ,int ,int *,int ,int ) ;
 int ioctlsocket (int,int ,int*) ;

__attribute__((used)) static RPC_STATUS rpcrt4_conn_tcp_handoff(RpcConnection *old_conn, RpcConnection *new_conn)
{
  int ret;
  struct sockaddr_in address;
  socklen_t addrsize;
  RpcConnection_tcp *server = (RpcConnection_tcp*) old_conn;
  RpcConnection_tcp *client = (RpcConnection_tcp*) new_conn;
  u_long nonblocking;

  addrsize = sizeof(address);
  ret = accept(server->sock, (struct sockaddr*) &address, &addrsize);
  if (ret < 0)
  {
    ERR("Failed to accept a TCP connection: error %d\n", ret);
    return RPC_S_OUT_OF_RESOURCES;
  }

  nonblocking = 1;
  ioctlsocket(ret, FIONBIO, &nonblocking);
  client->sock = ret;

  client->common.NetworkAddr = HeapAlloc(GetProcessHeap(), 0, INET6_ADDRSTRLEN);
  ret = getnameinfo((struct sockaddr*)&address, addrsize, client->common.NetworkAddr, INET6_ADDRSTRLEN, ((void*)0), 0, NI_NUMERICHOST);
  if (ret != 0)
  {
    ERR("Failed to retrieve the IP address, error %d\n", ret);
    return RPC_S_OUT_OF_RESOURCES;
  }

  TRACE("Accepted a new TCP connection from %s\n", client->common.NetworkAddr);
  return RPC_S_OK;
}
