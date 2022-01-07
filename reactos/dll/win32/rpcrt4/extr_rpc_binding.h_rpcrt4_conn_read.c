
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* read ) (TYPE_2__*,void*,unsigned int) ;} ;
typedef TYPE_2__ RpcConnection ;


 int stub1 (TYPE_2__*,void*,unsigned int) ;

__attribute__((used)) static inline int rpcrt4_conn_read(RpcConnection *Connection,
                     void *buffer, unsigned int len)
{
  return Connection->ops->read(Connection, buffer, len);
}
