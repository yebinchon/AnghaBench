
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tls; } ;
struct vlc_h1_conn {TYPE_1__ conn; } ;


 int CO (struct vlc_h1_conn*) ;
 int vlc_http_dbg (int ,char*) ;
 int vlc_tls_Close (int *) ;
 int vlc_tls_Shutdown (int *,int) ;

__attribute__((used)) static void *vlc_h1_stream_fatal(struct vlc_h1_conn *conn)
{
    if (conn->conn.tls != ((void*)0))
    {
        vlc_http_dbg(CO(conn), "connection failed");
        vlc_tls_Shutdown(conn->conn.tls, 1);
        vlc_tls_Close(conn->conn.tls);
        conn->conn.tls = ((void*)0);
    }
    return ((void*)0);
}
