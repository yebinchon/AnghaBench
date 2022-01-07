
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* write ) (TYPE_2__*,char const*,size_t) ;} ;
typedef TYPE_2__ Connection ;


 int stub1 (TYPE_2__*,char const*,size_t) ;

ssize_t
ts_connection_write(Connection *conn, const char *buf, size_t writelen)
{
 return conn->ops->write(conn, buf, writelen);
}
