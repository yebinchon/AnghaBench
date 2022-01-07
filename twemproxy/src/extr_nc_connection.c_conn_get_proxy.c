
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int redis; } ;
struct conn {int proxy; int (* ref ) (struct conn*,void*) ;int * dequeue_outq; int * enqueue_outq; int * dequeue_inq; int * enqueue_inq; int unref; int * active; int close; int * send_done; int * send_next; int * send; int * recv_done; int * recv_next; int recv; int redis; } ;


 int LOG_VVERB ;
 struct conn* _conn_get () ;
 int log_debug (int ,char*,struct conn*,int) ;
 int proxy_close ;
 int proxy_recv ;
 int proxy_ref (struct conn*,void*) ;
 int proxy_unref ;
 int stub1 (struct conn*,void*) ;

struct conn *
conn_get_proxy(void *owner)
{
    struct server_pool *pool = owner;
    struct conn *conn;

    conn = _conn_get();
    if (conn == ((void*)0)) {
        return ((void*)0);
    }

    conn->redis = pool->redis;

    conn->proxy = 1;

    conn->recv = proxy_recv;
    conn->recv_next = ((void*)0);
    conn->recv_done = ((void*)0);

    conn->send = ((void*)0);
    conn->send_next = ((void*)0);
    conn->send_done = ((void*)0);

    conn->close = proxy_close;
    conn->active = ((void*)0);

    conn->ref = proxy_ref;
    conn->unref = proxy_unref;

    conn->enqueue_inq = ((void*)0);
    conn->dequeue_inq = ((void*)0);
    conn->enqueue_outq = ((void*)0);
    conn->dequeue_outq = ((void*)0);

    conn->ref(conn, owner);

    log_debug(LOG_VVERB, "get conn %p proxy %d", conn, conn->proxy);

    return conn;
}
