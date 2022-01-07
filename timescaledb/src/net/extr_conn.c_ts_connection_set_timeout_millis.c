
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* set_timeout ) (TYPE_2__*,unsigned long) ;} ;
typedef TYPE_2__ Connection ;


 int stub1 (TYPE_2__*,unsigned long) ;

int
ts_connection_set_timeout_millis(Connection *conn, unsigned long millis)
{
 if (((void*)0) != conn->ops->set_timeout)
  return conn->ops->set_timeout(conn, millis);

 return -1;
}
