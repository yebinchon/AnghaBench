
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tls; } ;
struct vlc_h2_conn {TYPE_1__ conn; int out; int lock; int thread; int * streams; } ;


 int VLC_H2_NO_ERROR ;
 int assert (int ) ;
 int free (struct vlc_h2_conn*) ;
 int vlc_cancel (int ) ;
 int vlc_h2_error (struct vlc_h2_conn*,int ) ;
 int vlc_h2_output_destroy (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_tls_Close (int ) ;
 int vlc_tls_Shutdown (int ,int) ;

__attribute__((used)) static void vlc_h2_conn_destroy(struct vlc_h2_conn *conn)
{
    assert(conn->streams == ((void*)0));

    vlc_h2_error(conn, VLC_H2_NO_ERROR);

    vlc_cancel(conn->thread);
    vlc_join(conn->thread, ((void*)0));
    vlc_mutex_destroy(&conn->lock);

    vlc_h2_output_destroy(conn->out);
    vlc_tls_Shutdown(conn->conn.tls, 1);

    vlc_tls_Close(conn->conn.tls);
    free(conn);
}
