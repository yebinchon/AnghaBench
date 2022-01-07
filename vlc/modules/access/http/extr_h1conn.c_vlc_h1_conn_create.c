
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct vlc_http_conn {int * tls; int * cbs; } ;
struct TYPE_2__ {int * cbs; } ;
struct vlc_h1_conn {int active; int released; int proxy; struct vlc_http_conn conn; void* opaque; TYPE_1__ stream; } ;


 struct vlc_h1_conn* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_h1_conn_callbacks ;
 int vlc_h1_stream_callbacks ;

struct vlc_http_conn *vlc_h1_conn_create(void *ctx, vlc_tls_t *tls, bool proxy)
{
    struct vlc_h1_conn *conn = malloc(sizeof (*conn));
    if (unlikely(conn == ((void*)0)))
        return ((void*)0);

    conn->conn.cbs = &vlc_h1_conn_callbacks;
    conn->conn.tls = tls;
    conn->stream.cbs = &vlc_h1_stream_callbacks;
    conn->active = 0;
    conn->released = 0;
    conn->proxy = proxy;
    conn->opaque = ctx;

    return &conn->conn;
}
