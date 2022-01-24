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
struct msg {int request; scalar_t__ frag_id; int type; int error; int /*<<< orphan*/  err; int /*<<< orphan*/  mhdr; int /*<<< orphan*/  mlen; int /*<<< orphan*/ * end; TYPE_1__* frag_owner; struct msg* peer; } ;
struct mbuf {int /*<<< orphan*/ * pos; int /*<<< orphan*/ * last; } ;
struct TYPE_2__ {int /*<<< orphan*/  nfrag_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
#define  MSG_RSP_MC_END 129 
#define  MSG_RSP_MC_VALUE 128 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC7(struct msg *r)
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

    case MSG_RSP_MC_VALUE:
    case MSG_RSP_MC_END:

        /*
         * Readjust responses of the fragmented message vector by not
         * including the end marker for all
         */

        FUNC0(r->end != NULL);

        for (;;) {
            mbuf = FUNC2(&r->mhdr, mbuf, next);
            FUNC0(mbuf != NULL);

            /*
             * We cannot assert that end marker points to the last mbuf
             * Consider a scenario where end marker points to the
             * penultimate mbuf and the last mbuf only contains spaces
             * and CRLF: mhdr -> [...END] -> [\r\n]
             */

            if (r->end >= mbuf->pos && r->end < mbuf->last) {
                /* end marker is within this mbuf */
                r->mlen -= (uint32_t)(mbuf->last - r->end);
                mbuf->last = r->end;
                break;
            }

            /* end marker is not in this mbuf */
            r->mlen -= FUNC4(mbuf);
            FUNC6(&r->mhdr, mbuf);
            FUNC5(mbuf);
        }

        break;

    default:
        /*
         * Valid responses for a fragmented requests are MSG_RSP_MC_VALUE or,
         * MSG_RSP_MC_END. For an invalid response, we send out SERVER_ERRROR
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