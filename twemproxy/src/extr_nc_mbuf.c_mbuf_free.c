
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mbuf {scalar_t__ magic; scalar_t__ pos; scalar_t__ last; } ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 scalar_t__ MBUF_MAGIC ;
 int * STAILQ_NEXT (struct mbuf*,int ) ;
 int log_debug (int ,char*,struct mbuf*,scalar_t__) ;
 int mbuf_offset ;
 int nc_free (int *) ;
 int next ;

__attribute__((used)) static void
mbuf_free(struct mbuf *mbuf)
{
    uint8_t *buf;

    log_debug(LOG_VVERB, "put mbuf %p len %d", mbuf, mbuf->last - mbuf->pos);

    ASSERT(STAILQ_NEXT(mbuf, next) == ((void*)0));
    ASSERT(mbuf->magic == MBUF_MAGIC);

    buf = (uint8_t *)mbuf - mbuf_offset;
    nc_free(buf);
}
