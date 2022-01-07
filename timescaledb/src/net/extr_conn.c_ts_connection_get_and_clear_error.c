
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {char const* (* errmsg ) (TYPE_2__*) ;} ;
typedef TYPE_2__ Connection ;


 char const* stub1 (TYPE_2__*) ;

const char *
ts_connection_get_and_clear_error(Connection *conn)
{
 if (((void*)0) != conn->ops->errmsg)
  return conn->ops->errmsg(conn);

 return "unknown connection error";
}
