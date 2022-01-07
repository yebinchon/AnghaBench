
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref; } ;
typedef TYPE_1__ RpcConnection ;
typedef int LONG ;


 int InterlockedIncrement (int *) ;
 int TRACE (char*,TYPE_1__*,int ) ;

RpcConnection *RPCRT4_GrabConnection(RpcConnection *connection)
{
    LONG ref = InterlockedIncrement(&connection->ref);
    TRACE("%p ref=%u\n", connection, ref);
    return connection;
}
