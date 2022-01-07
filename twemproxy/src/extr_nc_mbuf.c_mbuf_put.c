
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ magic; scalar_t__ pos; scalar_t__ last; } ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 scalar_t__ MBUF_MAGIC ;
 int STAILQ_INSERT_HEAD (int *,struct mbuf*,int ) ;
 int * STAILQ_NEXT (struct mbuf*,int ) ;
 int free_mbufq ;
 int log_debug (int ,char*,struct mbuf*,scalar_t__) ;
 int next ;
 int nfree_mbufq ;

void
mbuf_put(struct mbuf *mbuf)
{
    log_debug(LOG_VVERB, "put mbuf %p len %d", mbuf, mbuf->last - mbuf->pos);

    ASSERT(STAILQ_NEXT(mbuf, next) == ((void*)0));
    ASSERT(mbuf->magic == MBUF_MAGIC);

    nfree_mbufq++;
    STAILQ_INSERT_HEAD(&free_mbufq, mbuf, next);
}
