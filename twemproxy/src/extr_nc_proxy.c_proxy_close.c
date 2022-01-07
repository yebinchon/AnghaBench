
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;
struct conn {int sd; int (* unref ) (struct conn*) ;int omsg_q; int imsg_q; int * smsg; int * rmsg; scalar_t__ proxy; int client; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ close (int) ;
 int conn_put (struct conn*) ;
 int errno ;
 int log_error (char*,int,int ) ;
 int strerror (int ) ;
 int stub1 (struct conn*) ;
 int stub2 (struct conn*) ;

void
proxy_close(struct context *ctx, struct conn *conn)
{
    rstatus_t status;

    ASSERT(!conn->client && conn->proxy);

    if (conn->sd < 0) {
        conn->unref(conn);
        conn_put(conn);
        return;
    }

    ASSERT(conn->rmsg == ((void*)0));
    ASSERT(conn->smsg == ((void*)0));
    ASSERT(TAILQ_EMPTY(&conn->imsg_q));
    ASSERT(TAILQ_EMPTY(&conn->omsg_q));

    conn->unref(conn);

    status = close(conn->sd);
    if (status < 0) {
        log_error("close p %d failed, ignored: %s", conn->sd, strerror(errno));
    }
    conn->sd = -1;

    conn_put(conn);
}
