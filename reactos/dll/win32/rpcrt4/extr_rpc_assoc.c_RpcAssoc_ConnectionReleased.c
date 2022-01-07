
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ assoc_group_id; int connection_cnt; } ;
typedef TYPE_1__ RpcAssoc ;


 scalar_t__ InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_1__*) ;

void RpcAssoc_ConnectionReleased(RpcAssoc *assoc)
{
    if (InterlockedDecrement(&assoc->connection_cnt))
        return;

    TRACE("Last %p connection released\n", assoc);
    assoc->assoc_group_id = 0;
}
