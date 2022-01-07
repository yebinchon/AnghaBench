
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msg {int request; scalar_t__ frag_id; int type; int error; int err; int mhdr; int mlen; scalar_t__ narg_end; scalar_t__ narg_start; int integer; TYPE_1__* frag_owner; struct msg* peer; } ;
struct mbuf {scalar_t__ pos; } ;
struct TYPE_2__ {int integer; int nfrag_done; } ;


 int ASSERT (int) ;
 scalar_t__ CRLF_LEN ;
 int EINVAL ;
 int LOG_ERR ;
 int MSG_REQ_REDIS_DEL ;
 int MSG_REQ_REDIS_MGET ;
 int MSG_REQ_REDIS_MSET ;



 struct mbuf* STAILQ_FIRST (int *) ;
 struct mbuf* STAILQ_LAST (int *,struct mbuf*,int ) ;
 int log_hexdump (int ,scalar_t__,int ,char*,int) ;
 int mbuf_length (struct mbuf*) ;
 int mbuf_rewind (struct mbuf*) ;
 int next ;

void
redis_pre_coalesce(struct msg *r)
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
    case 130:

        ASSERT(pr->type == MSG_REQ_REDIS_DEL);

        mbuf = STAILQ_FIRST(&r->mhdr);






        ASSERT(mbuf == STAILQ_LAST(&r->mhdr, mbuf, next));
        ASSERT(r->mlen == mbuf_length(mbuf));

        r->mlen -= mbuf_length(mbuf);
        mbuf_rewind(mbuf);


        pr->frag_owner->integer += r->integer;
        break;

    case 129:

        ASSERT(pr->type == MSG_REQ_REDIS_MGET);

        mbuf = STAILQ_FIRST(&r->mhdr);






        ASSERT(r->narg_start == mbuf->pos);
        ASSERT(r->narg_start < r->narg_end);

        r->narg_end += CRLF_LEN;
        r->mlen -= (uint32_t)(r->narg_end - r->narg_start);
        mbuf->pos = r->narg_end;

        break;

    case 128:
        if (pr->type == MSG_REQ_REDIS_MSET) {
            mbuf = STAILQ_FIRST(&r->mhdr);
            r->mlen -= mbuf_length(mbuf);
            mbuf_rewind(mbuf);
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
