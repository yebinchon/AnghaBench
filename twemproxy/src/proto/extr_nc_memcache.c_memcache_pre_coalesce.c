
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msg {int request; scalar_t__ frag_id; int type; int error; int err; int mhdr; int mlen; int * end; TYPE_1__* frag_owner; struct msg* peer; } ;
struct mbuf {int * pos; int * last; } ;
struct TYPE_2__ {int nfrag_done; } ;


 int ASSERT (int) ;
 int EINVAL ;
 int LOG_ERR ;


 struct mbuf* STAILQ_FIRST (int *) ;
 struct mbuf* STAILQ_LAST (int *,struct mbuf*,int ) ;
 int log_hexdump (int ,int *,int ,char*,int) ;
 int mbuf_length (struct mbuf*) ;
 int mbuf_put (struct mbuf*) ;
 int mbuf_remove (int *,struct mbuf*) ;
 int next ;

void
memcache_pre_coalesce(struct msg *r)
{
    struct msg *pr = r->peer;
    struct mbuf *mbuf;

    ASSERT(!r->request);
    ASSERT(pr->request);

    if (pr->frag_id == 0) {

        return;
    }

    pr->frag_owner->nfrag_done++;
    switch (r->type) {

    case 128:
    case 129:






        ASSERT(r->end != ((void*)0));

        for (;;) {
            mbuf = STAILQ_LAST(&r->mhdr, mbuf, next);
            ASSERT(mbuf != ((void*)0));
            if (r->end >= mbuf->pos && r->end < mbuf->last) {

                r->mlen -= (uint32_t)(mbuf->last - r->end);
                mbuf->last = r->end;
                break;
            }


            r->mlen -= mbuf_length(mbuf);
            mbuf_remove(&r->mhdr, mbuf);
            mbuf_put(mbuf);
        }

        break;

    default:





        mbuf = STAILQ_FIRST(&r->mhdr);
        log_hexdump(LOG_ERR, mbuf->pos, mbuf_length(mbuf), "rsp fragment "
                    "with unknown type %d", r->type);
        pr->error = 1;
        pr->err = EINVAL;
        break;
    }
}
