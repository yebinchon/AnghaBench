#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct msg_tqh {int dummy; } ;
struct msg {int narg; scalar_t__ type; scalar_t__ nfrag; struct msg* frag_owner; int /*<<< orphan*/  frag_id; struct msg** frag_seq; int /*<<< orphan*/  redis; int /*<<< orphan*/  request; int /*<<< orphan*/  owner; int /*<<< orphan*/  keys; int /*<<< orphan*/  mhdr; } ;
struct mbuf {char* pos; char* start; } ;
struct keypos {scalar_t__ start; scalar_t__ end; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MSG_REQ_REDIS_DEL ; 
 scalar_t__ MSG_REQ_REDIS_MGET ; 
 scalar_t__ MSG_REQ_REDIS_MSET ; 
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct msg_tqh*,struct msg*,int /*<<< orphan*/ ) ; 
 struct keypos* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_tqe ; 
 int FUNC6 (struct msg*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct msg* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct msg*,char*,int) ; 
 struct msg** FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct msg**) ; 
 struct msg** FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct msg*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct msg*,struct msg*) ; 

__attribute__((used)) static rstatus_t
FUNC15(struct msg *r, uint32_t ncontinuum, struct msg_tqh *frag_msgq,
                    uint32_t key_step)
{
    struct mbuf *mbuf;
    struct msg **sub_msgs;
    uint32_t i;
    rstatus_t status;

    FUNC0(FUNC5(r->keys) == (r->narg - 1) / key_step);

    sub_msgs = FUNC12(ncontinuum * sizeof(*sub_msgs));
    if (sub_msgs == NULL) {
        return NC_ENOMEM;
    }

    FUNC0(r->frag_seq == NULL);
    r->frag_seq = FUNC10(FUNC5(r->keys) * sizeof(*r->frag_seq));
    if (r->frag_seq == NULL) {
        FUNC11(sub_msgs);
        return NC_ENOMEM;
    }

    mbuf = FUNC2(&r->mhdr);
    mbuf->pos = mbuf->start;

    /*
     * This code is based on the assumption that '*narg\r\n$4\r\nMGET\r\n' is located
     * in a contiguous location.
     * This is always true because we have capped our MBUF_MIN_SIZE at 512 and
     * whenever we have multiple messages, we copy the tail message into a new mbuf
     */
    for (i = 0; i < 3; i++) {                 /* eat *narg\r\n$4\r\nMGET\r\n */
        for (; *(mbuf->pos) != '\n';) {
            mbuf->pos++;
        }
        mbuf->pos++;
    }

    r->frag_id = FUNC7();
    r->nfrag = 0;
    r->frag_owner = r;

    for (i = 0; i < FUNC5(r->keys); i++) {        /* for each key */
        struct msg *sub_msg;
        struct keypos *kpos = FUNC4(r->keys, i);
        uint32_t idx = FUNC6(r, kpos->start, kpos->end - kpos->start);

        if (sub_msgs[idx] == NULL) {
            sub_msgs[idx] = FUNC8(r->owner, r->request, r->redis);
            if (sub_msgs[idx] == NULL) {
                FUNC11(sub_msgs);
                return NC_ENOMEM;
            }
        }
        r->frag_seq[i] = sub_msg = sub_msgs[idx];

        sub_msg->narg++;
        status = FUNC13(sub_msg, kpos->start, kpos->end - kpos->start);
        if (status != NC_OK) {
            FUNC11(sub_msgs);
            return status;
        }

        if (key_step == 1) {                            /* mget,del */
            continue;
        } else {                                        /* mset */
            status = FUNC14(NULL, r);          /* eat key */
            if (status != NC_OK) {
                FUNC11(sub_msgs);
                return status;
            }

            status = FUNC14(sub_msg, r);
            if (status != NC_OK) {
                FUNC11(sub_msgs);
                return status;
            }

            sub_msg->narg++;
        }
    }

    for (i = 0; i < ncontinuum; i++) {     /* prepend mget header, and forward it */
        struct msg *sub_msg = sub_msgs[i];
        if (sub_msg == NULL) {
            continue;
        }

        if (r->type == MSG_REQ_REDIS_MGET) {
            status = FUNC9(sub_msg, "*%d\r\n$4\r\nmget\r\n",
                                        sub_msg->narg + 1);
        } else if (r->type == MSG_REQ_REDIS_DEL) {
            status = FUNC9(sub_msg, "*%d\r\n$3\r\ndel\r\n",
                                        sub_msg->narg + 1);
        } else if (r->type == MSG_REQ_REDIS_MSET) {
            status = FUNC9(sub_msg, "*%d\r\n$4\r\nmset\r\n",
                                        sub_msg->narg + 1);
        } else {
            FUNC1();
        }
        if (status != NC_OK) {
            FUNC11(sub_msgs);
            return status;
        }

        sub_msg->type = r->type;
        sub_msg->frag_id = r->frag_id;
        sub_msg->frag_owner = r->frag_owner;

        FUNC3(frag_msgq, sub_msg, m_tqe);
        r->nfrag++;
    }

    FUNC11(sub_msgs);
    return NC_OK;
}