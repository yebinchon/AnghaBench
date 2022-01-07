
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int redis; int client; int (* ref ) (struct conn*,void*) ;int * swallow_msg; int * post_connect; int dequeue_outq; int enqueue_outq; int * dequeue_inq; int * enqueue_inq; int unref; int active; int close; int send_done; int send_next; void* send; int recv_done; int recv_next; void* recv; } ;


 int LOG_VVERB ;
 struct conn* _conn_get () ;
 int client_active ;
 int client_close ;
 int client_ref (struct conn*,void*) ;
 int client_unref ;
 int log_debug (int ,char*,struct conn*,int) ;
 int * memcache_post_connect ;
 int * memcache_swallow_msg ;
 void* msg_recv ;
 void* msg_send ;
 int ncurr_cconn ;
 int * redis_post_connect ;
 int * redis_swallow_msg ;
 int req_client_dequeue_omsgq ;
 int req_client_enqueue_omsgq ;
 int req_recv_done ;
 int req_recv_next ;
 int req_send_done ;
 int req_send_next ;
 int * req_server_dequeue_imsgq ;
 int req_server_dequeue_omsgq ;
 int * req_server_enqueue_imsgq ;
 int req_server_enqueue_omsgq ;
 int rsp_recv_done ;
 int rsp_recv_next ;
 int rsp_send_done ;
 int rsp_send_next ;
 int server_active ;
 int server_close ;
 int server_ref (struct conn*,void*) ;
 int server_unref ;
 int stub1 (struct conn*,void*) ;

struct conn *
conn_get(void *owner, bool client, bool redis)
{
    struct conn *conn;

    conn = _conn_get();
    if (conn == ((void*)0)) {
        return ((void*)0);
    }


    conn->redis = redis ? 1 : 0;

    conn->client = client ? 1 : 0;

    if (conn->client) {




        conn->recv = msg_recv;
        conn->recv_next = req_recv_next;
        conn->recv_done = req_recv_done;

        conn->send = msg_send;
        conn->send_next = rsp_send_next;
        conn->send_done = rsp_send_done;

        conn->close = client_close;
        conn->active = client_active;

        conn->ref = client_ref;
        conn->unref = client_unref;

        conn->enqueue_inq = ((void*)0);
        conn->dequeue_inq = ((void*)0);
        conn->enqueue_outq = req_client_enqueue_omsgq;
        conn->dequeue_outq = req_client_dequeue_omsgq;
        conn->post_connect = ((void*)0);
        conn->swallow_msg = ((void*)0);

        ncurr_cconn++;
    } else {




        conn->recv = msg_recv;
        conn->recv_next = rsp_recv_next;
        conn->recv_done = rsp_recv_done;

        conn->send = msg_send;
        conn->send_next = req_send_next;
        conn->send_done = req_send_done;

        conn->close = server_close;
        conn->active = server_active;

        conn->ref = server_ref;
        conn->unref = server_unref;

        conn->enqueue_inq = req_server_enqueue_imsgq;
        conn->dequeue_inq = req_server_dequeue_imsgq;
        conn->enqueue_outq = req_server_enqueue_omsgq;
        conn->dequeue_outq = req_server_dequeue_omsgq;
        if (redis) {
          conn->post_connect = redis_post_connect;
          conn->swallow_msg = redis_swallow_msg;
        } else {
          conn->post_connect = memcache_post_connect;
          conn->swallow_msg = memcache_swallow_msg;
        }
    }

    conn->ref(conn, owner);
    log_debug(LOG_VVERB, "get conn %p client %d", conn, conn->client);

    return conn;
}
