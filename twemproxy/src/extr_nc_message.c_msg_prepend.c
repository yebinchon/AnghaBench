
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct msg {int mhdr; int mlen; } ;
struct mbuf {int dummy; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ENOMEM ;
 int NC_OK ;
 int STAILQ_INSERT_HEAD (int *,struct mbuf*,int ) ;
 int mbuf_copy (struct mbuf*,int *,size_t) ;
 struct mbuf* mbuf_get () ;
 size_t mbuf_size (struct mbuf*) ;
 int next ;

rstatus_t
msg_prepend(struct msg *msg, uint8_t *pos, size_t n)
{
    struct mbuf *mbuf;

    mbuf = mbuf_get();
    if (mbuf == ((void*)0)) {
        return NC_ENOMEM;
    }

    ASSERT(n <= mbuf_size(mbuf));

    mbuf_copy(mbuf, pos, n);
    msg->mlen += (uint32_t)n;

    STAILQ_INSERT_HEAD(&msg->mhdr, mbuf, next);

    return NC_OK;
}
