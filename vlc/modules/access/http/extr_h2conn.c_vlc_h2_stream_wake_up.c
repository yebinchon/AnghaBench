
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_stream {int interrupted; int recv_wait; struct vlc_h2_conn* conn; } ;
struct vlc_h2_conn {int lock; } ;


 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void vlc_h2_stream_wake_up(void *data)
{
    struct vlc_h2_stream *s = data;
    struct vlc_h2_conn *conn = s->conn;

    vlc_mutex_lock(&conn->lock);
    s->interrupted = 1;
    vlc_cond_signal(&s->recv_wait);
    vlc_mutex_unlock(&conn->lock);
}
