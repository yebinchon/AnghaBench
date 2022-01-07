
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int mhdr; } ;
struct mbuf {int dummy; } ;


 scalar_t__ STAILQ_EMPTY (int *) ;
 struct mbuf* STAILQ_LAST (int *,struct mbuf*,int ) ;
 struct mbuf* mbuf_get () ;
 int mbuf_insert (int *,struct mbuf*) ;
 size_t mbuf_size (struct mbuf*) ;
 int next ;

struct mbuf *
msg_ensure_mbuf(struct msg *msg, size_t len)
{
    struct mbuf *mbuf;

    if (STAILQ_EMPTY(&msg->mhdr) ||
        mbuf_size(STAILQ_LAST(&msg->mhdr, mbuf, next)) < len) {
        mbuf = mbuf_get();
        if (mbuf == ((void*)0)) {
            return ((void*)0);
        }
        mbuf_insert(&msg->mhdr, mbuf);
    } else {
        mbuf = STAILQ_LAST(&msg->mhdr, mbuf, next);
    }

    return mbuf;
}
