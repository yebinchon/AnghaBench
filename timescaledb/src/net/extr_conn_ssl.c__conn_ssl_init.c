
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONNECTION_SSL ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int ssl_ops ;
 int ts_connection_register (int ,int *) ;

void
_conn_ssl_init(void)
{
 SSL_library_init();

 SSL_load_error_strings();
 ts_connection_register(CONNECTION_SSL, &ssl_ops);
}
