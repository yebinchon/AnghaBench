
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mhdr {int dummy; } ;
struct mbuf {scalar_t__ pos; scalar_t__ last; } ;


 int LOG_VVERB ;
 int STAILQ_INSERT_TAIL (struct mhdr*,struct mbuf*,int ) ;
 int log_debug (int ,char*,struct mbuf*,scalar_t__) ;
 int next ;

void
mbuf_insert(struct mhdr *mhdr, struct mbuf *mbuf)
{
    STAILQ_INSERT_TAIL(mhdr, mbuf, next);
    log_debug(LOG_VVERB, "insert mbuf %p len %d", mbuf, mbuf->last - mbuf->pos);
}
