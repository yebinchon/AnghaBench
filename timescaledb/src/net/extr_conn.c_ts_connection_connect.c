
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* connect ) (TYPE_2__*,char const*,char const*,int) ;} ;
typedef TYPE_2__ Connection ;


 int stub1 (TYPE_2__*,char const*,char const*,int) ;

int
ts_connection_connect(Connection *conn, const char *host, const char *servname, int port)
{




 return conn->ops->connect(conn, host, servname, port);
}
