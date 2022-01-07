
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int ASSERT (int) ;
 int STAILQ_EMPTY (int *) ;
 struct mbuf* STAILQ_FIRST (int *) ;
 int free_mbufq ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_remove (int *,struct mbuf*) ;
 scalar_t__ nfree_mbufq ;

void
mbuf_deinit(void)
{
    while (!STAILQ_EMPTY(&free_mbufq)) {
        struct mbuf *mbuf = STAILQ_FIRST(&free_mbufq);
        mbuf_remove(&free_mbufq, mbuf);
        mbuf_free(mbuf);
        nfree_mbufq--;
    }
    ASSERT(nfree_mbufq == 0);
}
