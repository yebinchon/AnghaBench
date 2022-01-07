
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {scalar_t__ sd; scalar_t__ client; int * owner; } ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 int TAILQ_INSERT_HEAD (int *,struct conn*,int ) ;
 int conn_tqe ;
 int free_connq ;
 int log_debug (int ,char*,struct conn*) ;
 int ncurr_cconn ;
 int ncurr_conn ;
 int nfree_connq ;

void
conn_put(struct conn *conn)
{
    ASSERT(conn->sd < 0);
    ASSERT(conn->owner == ((void*)0));

    log_debug(LOG_VVERB, "put conn %p", conn);

    nfree_connq++;
    TAILQ_INSERT_HEAD(&free_connq, conn, conn_tqe);

    if (conn->client) {
        ncurr_cconn--;
    }
    ncurr_conn--;
}
