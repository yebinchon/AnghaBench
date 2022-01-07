
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conn ;
 int conn_shutdown (int) ;
 int external_tls ;
 int vlc_http_conn_release (int ) ;
 int vlc_tls_SessionDelete (int ) ;

__attribute__((used)) static void conn_destroy(void)
{
    conn_shutdown(0);
    vlc_http_conn_release(conn);
    vlc_tls_SessionDelete(external_tls);
}
