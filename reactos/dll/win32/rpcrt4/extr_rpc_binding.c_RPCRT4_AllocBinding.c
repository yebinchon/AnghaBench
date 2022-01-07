
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; int server; } ;
typedef TYPE_1__ RpcBinding ;
typedef int RPC_STATUS ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int RPC_S_OK ;

__attribute__((used)) static RPC_STATUS RPCRT4_AllocBinding(RpcBinding** Binding, BOOL server)
{
  RpcBinding* NewBinding;

  NewBinding = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(RpcBinding));
  NewBinding->refs = 1;
  NewBinding->server = server;

  *Binding = NewBinding;

  return RPC_S_OK;
}
