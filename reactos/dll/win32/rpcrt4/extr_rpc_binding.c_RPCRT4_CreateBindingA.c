
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Protseq; } ;
typedef TYPE_1__ RpcBinding ;
typedef int RPC_STATUS ;
typedef int LPCSTR ;
typedef int BOOL ;


 int RPCRT4_AllocBinding (TYPE_1__**,int ) ;
 int RPCRT4_strdupA (int ) ;
 int RPC_S_OK ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static RPC_STATUS RPCRT4_CreateBindingA(RpcBinding** Binding, BOOL server, LPCSTR Protseq)
{
  RpcBinding* NewBinding;

  RPCRT4_AllocBinding(&NewBinding, server);
  NewBinding->Protseq = RPCRT4_strdupA(Protseq);

  TRACE("binding: %p\n", NewBinding);
  *Binding = NewBinding;

  return RPC_S_OK;
}
