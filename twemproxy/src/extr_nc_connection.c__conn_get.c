
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int sd; scalar_t__ authenticated; scalar_t__ redis; scalar_t__ done; scalar_t__ eof; scalar_t__ connected; scalar_t__ connecting; scalar_t__ proxy; scalar_t__ client; scalar_t__ send_ready; scalar_t__ send_active; scalar_t__ recv_ready; scalar_t__ recv_active; scalar_t__ err; scalar_t__ events; scalar_t__ recv_bytes; scalar_t__ send_bytes; int * smsg; int * rmsg; int omsg_q; int imsg_q; int * owner; } ;


 int ASSERT (int) ;
 int TAILQ_EMPTY (int *) ;
 struct conn* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_REMOVE (int *,struct conn*,int ) ;
 int conn_tqe ;
 int free_connq ;
 struct conn* nc_alloc (int) ;
 int ncurr_conn ;
 scalar_t__ nfree_connq ;
 int ntotal_conn ;

__attribute__((used)) static struct conn *
_conn_get(void)
{
    struct conn *conn;

    if (!TAILQ_EMPTY(&free_connq)) {
        ASSERT(nfree_connq > 0);

        conn = TAILQ_FIRST(&free_connq);
        nfree_connq--;
        TAILQ_REMOVE(&free_connq, conn, conn_tqe);
    } else {
        conn = nc_alloc(sizeof(*conn));
        if (conn == ((void*)0)) {
            return ((void*)0);
        }
    }

    conn->owner = ((void*)0);

    conn->sd = -1;


    TAILQ_INIT(&conn->imsg_q);
    TAILQ_INIT(&conn->omsg_q);
    conn->rmsg = ((void*)0);
    conn->smsg = ((void*)0);







    conn->send_bytes = 0;
    conn->recv_bytes = 0;

    conn->events = 0;
    conn->err = 0;
    conn->recv_active = 0;
    conn->recv_ready = 0;
    conn->send_active = 0;
    conn->send_ready = 0;

    conn->client = 0;
    conn->proxy = 0;
    conn->connecting = 0;
    conn->connected = 0;
    conn->eof = 0;
    conn->done = 0;
    conn->redis = 0;
    conn->authenticated = 0;

    ntotal_conn++;
    ncurr_conn++;

    return conn;
}
