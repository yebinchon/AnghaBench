
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sock; int common; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef int RpcConnection ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int rpcrt4_sock_wait_init (TYPE_1__*) ;

__attribute__((used)) static RpcConnection *rpcrt4_conn_tcp_alloc(void)
{
  RpcConnection_tcp *tcpc;
  tcpc = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(RpcConnection_tcp));
  if (tcpc == ((void*)0))
    return ((void*)0);
  tcpc->sock = -1;
  if (!rpcrt4_sock_wait_init(tcpc))
  {
    HeapFree(GetProcessHeap(), 0, tcpc);
    return ((void*)0);
  }
  return &tcpc->common;
}
