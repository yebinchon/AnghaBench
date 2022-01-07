
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_tls {int dummy; } ;
struct vlc_http_conn {struct vlc_tls* tls; int * cbs; } ;
struct vlc_h2_conn {int next_id; int released; struct vlc_http_conn conn; int * out; int lock; int thread; void* send_cwnd; void* init_send_cwnd; int * streams; void* opaque; } ;


 void* VLC_H2_DEFAULT_INIT_WINDOW ;
 int VLC_THREAD_PRIORITY_INPUT ;
 int free (struct vlc_h2_conn*) ;
 struct vlc_h2_conn* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_clone (int *,int ,struct vlc_h2_conn*,int ) ;
 int vlc_h2_conn_callbacks ;
 scalar_t__ vlc_h2_conn_queue (struct vlc_h2_conn*,int ) ;
 int vlc_h2_frame_settings () ;
 int * vlc_h2_output_create (struct vlc_tls*,int) ;
 int vlc_h2_output_destroy (int *) ;
 int vlc_h2_recv_thread ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;

struct vlc_http_conn *vlc_h2_conn_create(void *ctx, struct vlc_tls *tls)
{
    struct vlc_h2_conn *conn = malloc(sizeof (*conn));
    if (unlikely(conn == ((void*)0)))
        return ((void*)0);

    conn->conn.cbs = &vlc_h2_conn_callbacks;
    conn->conn.tls = tls;
    conn->out = vlc_h2_output_create(tls, 1);
    conn->opaque = ctx;
    conn->streams = ((void*)0);
    conn->next_id = 1;
    conn->released = 0;
    conn->init_send_cwnd = VLC_H2_DEFAULT_INIT_WINDOW;
    conn->send_cwnd = VLC_H2_DEFAULT_INIT_WINDOW;

    if (unlikely(conn->out == ((void*)0)))
        goto error;

    vlc_mutex_init(&conn->lock);

    if (vlc_h2_conn_queue(conn, vlc_h2_frame_settings())
     || vlc_clone(&conn->thread, vlc_h2_recv_thread, conn,
                  VLC_THREAD_PRIORITY_INPUT))
    {
        vlc_mutex_destroy(&conn->lock);
        vlc_h2_output_destroy(conn->out);
        goto error;
    }
    return &conn->conn;
error:
    free(conn);
    return ((void*)0);
}
