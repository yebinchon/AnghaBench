
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct msg {int mlen; } ;
struct mbuf {int dummy; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ENOMEM ;
 int NC_OK ;
 int mbuf_copy (struct mbuf*,int *,size_t) ;
 size_t mbuf_data_size () ;
 size_t mbuf_size (struct mbuf*) ;
 struct mbuf* msg_ensure_mbuf (struct msg*,size_t) ;

rstatus_t
msg_append(struct msg *msg, uint8_t *pos, size_t n)
{
    struct mbuf *mbuf;

    ASSERT(n <= mbuf_data_size());

    mbuf = msg_ensure_mbuf(msg, n);
    if (mbuf == ((void*)0)) {
        return NC_ENOMEM;
    }

    ASSERT(n <= mbuf_size(mbuf));

    mbuf_copy(mbuf, pos, n);
    msg->mlen += (uint32_t)n;

    return NC_OK;
}
