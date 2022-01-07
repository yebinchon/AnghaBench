
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int listen_event; scalar_t__ pipe; } ;
typedef TYPE_1__ RpcConnection_np ;


 int assert (int) ;

__attribute__((used)) static void rpcrt4_conn_np_handoff(RpcConnection_np *old_npc, RpcConnection_np *new_npc)
{



    new_npc->pipe = old_npc->pipe;
    old_npc->pipe = 0;
    assert(!old_npc->listen_event);
}
