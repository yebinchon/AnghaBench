
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sock; } ;
struct TYPE_6__ {int * ssl; TYPE_1__ conn; int * ssl_ctx; } ;
typedef TYPE_2__ SSLConnection ;


 int ERR_clear_error () ;
 int SSL_connect (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_fd (int *,int ) ;
 int * ssl_ctx_create () ;
 int ssl_set_error (TYPE_2__*,int) ;

__attribute__((used)) static int
ssl_setup(SSLConnection *conn)
{
 int ret;

 conn->ssl_ctx = ssl_ctx_create();

 if (((void*)0) == conn->ssl_ctx)
 {
  ssl_set_error(conn, -1);
  return -1;
 }

 ERR_clear_error();

 conn->ssl = SSL_new(conn->ssl_ctx);

 if (conn->ssl == ((void*)0))
 {
  ssl_set_error(conn, -1);
  return -1;
 }

 ERR_clear_error();

 ret = SSL_set_fd(conn->ssl, conn->conn.sock);

 if (ret == 0)
 {
  ssl_set_error(conn, -1);
  return -1;
 }

 ret = SSL_connect(conn->ssl);

 if (ret <= 0)
 {
  ssl_set_error(conn, ret);
  ret = -1;
 }

 return ret;
}
