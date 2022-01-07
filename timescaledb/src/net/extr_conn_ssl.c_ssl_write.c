
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int ssl; } ;
typedef TYPE_1__ SSLConnection ;
typedef int Connection ;


 int SSL_write (int ,char const*,size_t) ;
 int ssl_set_error (TYPE_1__*,int) ;

__attribute__((used)) static ssize_t
ssl_write(Connection *conn, const char *buf, size_t writelen)
{
 SSLConnection *sslconn = (SSLConnection *) conn;

 int ret = SSL_write(sslconn->ssl, buf, writelen);

 if (ret < 0)
  ssl_set_error(sslconn, ret);

 return ret;
}
