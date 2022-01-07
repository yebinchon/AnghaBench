
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int dummy; } ;


 int ASSERT (int) ;
 struct conn* TAILQ_FIRST (int *) ;
 struct conn* TAILQ_NEXT (struct conn*,int ) ;
 int conn_free (struct conn*) ;
 int conn_tqe ;
 int free_connq ;
 scalar_t__ nfree_connq ;

void
conn_deinit(void)
{
    struct conn *conn, *nconn;

    for (conn = TAILQ_FIRST(&free_connq); conn != ((void*)0);
         conn = nconn, nfree_connq--) {
        ASSERT(nfree_connq > 0);
        nconn = TAILQ_NEXT(conn, conn_tqe);
        conn_free(conn);
    }
    ASSERT(nfree_connq == 0);
}
