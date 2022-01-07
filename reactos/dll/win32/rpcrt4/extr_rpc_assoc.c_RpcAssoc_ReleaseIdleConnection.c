
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cs; int free_connection_pool; scalar_t__ assoc_group_id; } ;
struct TYPE_5__ {int conn_pool_entry; scalar_t__ assoc_group_id; int * async_state; int server; } ;
typedef TYPE_1__ RpcConnection ;
typedef TYPE_2__ RpcAssoc ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int assert (int) ;
 int list_add_head (int *,int *) ;

void RpcAssoc_ReleaseIdleConnection(RpcAssoc *assoc, RpcConnection *Connection)
{
    assert(!Connection->server);
    Connection->async_state = ((void*)0);
    EnterCriticalSection(&assoc->cs);
    if (!assoc->assoc_group_id) assoc->assoc_group_id = Connection->assoc_group_id;
    list_add_head(&assoc->free_connection_pool, &Connection->conn_pool_entry);
    LeaveCriticalSection(&assoc->cs);
}
