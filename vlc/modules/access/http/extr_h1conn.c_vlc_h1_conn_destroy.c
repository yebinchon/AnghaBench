
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tls; } ;
struct vlc_h1_conn {int released; TYPE_1__ conn; int active; } ;


 int assert (int) ;
 int free (struct vlc_h1_conn*) ;
 int vlc_tls_Close (int *) ;
 int vlc_tls_Shutdown (int *,int) ;

__attribute__((used)) static void vlc_h1_conn_destroy(struct vlc_h1_conn *conn)
{
    assert(!conn->active);
    assert(conn->released);

    if (conn->conn.tls != ((void*)0))
    {
        vlc_tls_Shutdown(conn->conn.tls, 1);
        vlc_tls_Close(conn->conn.tls);
    }
    free(conn);
}
