
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef int RpcConnection ;


 int TRACE (char*,int ,void const*,unsigned int,int) ;
 scalar_t__ WSAEINTR ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int rpcrt4_sock_wait_for_send (TYPE_1__*) ;
 int send (int ,char const*,unsigned int,int ) ;

__attribute__((used)) static int rpcrt4_conn_tcp_write(RpcConnection *Connection,
                                 const void *buffer, unsigned int count)
{
  RpcConnection_tcp *tcpc = (RpcConnection_tcp *) Connection;
  int bytes_written = 0;
  while (bytes_written != count)
  {
    int r = send(tcpc->sock, (const char *)buffer + bytes_written, count - bytes_written, 0);
    if (r >= 0)
      bytes_written += r;
    else if (WSAGetLastError() == WSAEINTR)
      continue;
    else if (WSAGetLastError() != WSAEWOULDBLOCK)
      return -1;
    else
    {
      if (!rpcrt4_sock_wait_for_send(tcpc))
        return -1;
    }
  }
  TRACE("%d %p %u -> %d\n", tcpc->sock, buffer, count, bytes_written);
  return bytes_written;
}
