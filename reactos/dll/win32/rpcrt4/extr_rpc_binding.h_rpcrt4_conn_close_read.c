
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* close_read ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RpcConnection ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static inline void rpcrt4_conn_close_read(RpcConnection *connection)
{
  connection->ops->close_read(connection);
}
