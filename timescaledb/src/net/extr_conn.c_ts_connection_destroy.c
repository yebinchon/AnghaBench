
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ops; } ;
typedef TYPE_1__ Connection ;


 int pfree (TYPE_1__*) ;
 int ts_connection_close (TYPE_1__*) ;

void
ts_connection_destroy(Connection *conn)
{
 if (conn == ((void*)0))
  return;

 ts_connection_close(conn);
 conn->ops = ((void*)0);
 pfree(conn);
}
