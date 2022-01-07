
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ssl_ctx; int * ssl; } ;
typedef TYPE_1__ SSLConnection ;
typedef int Connection ;


 int SSL_CTX_free (int *) ;
 int SSL_free (int *) ;
 int ts_plain_close (int *) ;

__attribute__((used)) static void
ssl_close(Connection *conn)
{
 SSLConnection *sslconn = (SSLConnection *) conn;

 if (sslconn->ssl != ((void*)0))
 {
  SSL_free(sslconn->ssl);
  sslconn->ssl = ((void*)0);
 }

 if (sslconn->ssl_ctx != ((void*)0))
 {
  SSL_CTX_free(sslconn->ssl_ctx);
  sslconn->ssl_ctx = ((void*)0);
 }

 ts_plain_close(conn);
}
