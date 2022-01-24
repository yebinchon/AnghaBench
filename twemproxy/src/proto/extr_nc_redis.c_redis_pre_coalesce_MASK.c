#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct msg {int request; scalar_t__ frag_id; int type; int error; int /*<<< orphan*/  err; int /*<<< orphan*/  mhdr; int /*<<< orphan*/  mlen; scalar_t__ narg_end; scalar_t__ narg_start; int /*<<< orphan*/  integer; TYPE_1__* frag_owner; struct msg* peer; } ;
struct mbuf {scalar_t__ pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  integer; int /*<<< orphan*/  nfrag_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CRLF_LEN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MSG_REQ_REDIS_DEL ; 
 int MSG_REQ_REDIS_MGET ; 
 int MSG_REQ_REDIS_MSET ; 
#define  MSG_RSP_REDIS_INTEGER 130 
#define  MSG_RSP_REDIS_MULTIBULK 129 
#define  MSG_RSP_REDIS_STATUS 128 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC6(struct msg *r)
{
    struct msg *pr = r->peer; /* peer request */
    struct mbuf *mbuf;

    FUNC0(!r->request);
    FUNC0(pr->request);

    if (pr->frag_id == 0) {
        /* do nothing, if not a response to a fragmented request */
        return;
    }
    pr->frag_owner->nfrag_done++;

    switch (r->type) {
    case MSG_RSP_REDIS_INTEGER:
        /* only redis 'del' fragmented request sends back integer reply */
        FUNC0(pr->type == MSG_REQ_REDIS_DEL);

        mbuf = FUNC1(&r->mhdr);
        /*
         * Our response parser guarantees that the integer reply will be
         * completely encapsulated in a single mbuf and we should skip over
         * all the mbuf contents and discard it as the parser has already
         * parsed the integer reply and stored it in msg->integer
         */
        FUNC0(mbuf == FUNC2(&r->mhdr, mbuf, next));
        FUNC0(r->mlen == FUNC4(mbuf));

        r->mlen -= FUNC4(mbuf);
        FUNC5(mbuf);

        /* accumulate the integer value in frag_owner of peer request */
        pr->frag_owner->integer += r->integer;
        break;

    case MSG_RSP_REDIS_MULTIBULK:
        /* only redis 'mget' fragmented request sends back multi-bulk reply */
        FUNC0(pr->type == MSG_REQ_REDIS_MGET);

        mbuf = FUNC1(&r->mhdr);
        /*
         * Muti-bulk reply can span over multiple mbufs and in each reply
         * we should skip over the narg token. Our response parser
         * guarantees thaat the narg token and the immediately following
         * '\r\n' will exist in a contiguous region in the first mbuf
         */
        FUNC0(r->narg_start == mbuf->pos);
        FUNC0(r->narg_start < r->narg_end);

        r->narg_end += CRLF_LEN;
        r->mlen -= (uint32_t)(r->narg_end - r->narg_start);
        mbuf->pos = r->narg_end;

        break;

    case MSG_RSP_REDIS_STATUS:
        if (pr->type == MSG_REQ_REDIS_MSET) {       /* MSET segments */
            mbuf = FUNC1(&r->mhdr);
            r->mlen -= FUNC4(mbuf);
            FUNC5(mbuf);
        }
        break;

    default:
        /*
         * Valid responses for a fragmented request are MSG_RSP_REDIS_INTEGER or,
         * MSG_RSP_REDIS_MULTIBULK. For an invalid response, we send out -ERR
         * with EINVAL errno
         */
        mbuf = FUNC1(&r->mhdr);
        FUNC3(LOG_ERR, mbuf->pos, FUNC4(mbuf), "rsp fragment "
                    "with unknown type %d", r->type);
        pr->error = 1;
        pr->err = EINVAL;
        break;
    }
}