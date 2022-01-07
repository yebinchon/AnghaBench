
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int data; } ;
struct server_pool {TYPE_1__ name; int redis_db; } ;
struct TYPE_4__ {int data; } ;
struct server {TYPE_2__ name; struct server_pool* owner; } ;
struct msg {scalar_t__ type; int mhdr; } ;
struct mbuf {int * start; } ;
struct conn {scalar_t__ owner; } ;
typedef int message ;


 size_t MIN (scalar_t__,int) ;
 scalar_t__ MSG_REQ_REDIS_SELECT ;
 struct mbuf* STAILQ_LAST (int *,int ,int ) ;
 int log_warn (char*,int ,int ,int ,scalar_t__*) ;
 int mbuf ;
 scalar_t__ mbuf_length (struct mbuf*) ;
 int nc_memcpy (scalar_t__*,int *,size_t) ;
 int next ;
 scalar_t__ redis_error (struct msg*) ;

void
redis_swallow_msg(struct conn *conn, struct msg *pmsg, struct msg *msg)
{
    if (pmsg != ((void*)0) && pmsg->type == MSG_REQ_REDIS_SELECT &&
        msg != ((void*)0) && redis_error(msg)) {
        struct server* conn_server;
        struct server_pool* conn_pool;
        struct mbuf* rsp_buffer;
        uint8_t message[128];
        size_t copy_len;





        conn_server = (struct server*)conn->owner;
        conn_pool = conn_server->owner;
        rsp_buffer = STAILQ_LAST(&msg->mhdr, mbuf, next);
        copy_len = MIN(mbuf_length(rsp_buffer) - 3, sizeof(message) - 1);

        nc_memcpy(message, &rsp_buffer->start[1], copy_len);
        message[copy_len] = 0;

        log_warn("SELECT %d failed on %s | %s: %s",
                 conn_pool->redis_db, conn_pool->name.data,
                 conn_server->name.data, message);
    }
}
