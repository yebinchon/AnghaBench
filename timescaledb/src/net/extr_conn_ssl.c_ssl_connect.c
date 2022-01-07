
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSLConnection ;
typedef int Connection ;


 int ssl_setup (int *) ;
 int ts_plain_connect (int *,char const*,char const*,int) ;

__attribute__((used)) static int
ssl_connect(Connection *conn, const char *host, const char *servname, int port)
{
 int ret;


 ret = ts_plain_connect(conn, host, servname, port);

 if (ret < 0)
  return -1;

 return ssl_setup((SSLConnection *) conn);
}
