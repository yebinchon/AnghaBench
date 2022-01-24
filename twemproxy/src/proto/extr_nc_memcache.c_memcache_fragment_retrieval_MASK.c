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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct msg_tqh {int dummy; } ;
struct msg {scalar_t__ type; scalar_t__ nfrag; struct msg* frag_owner; int /*<<< orphan*/  frag_id; int /*<<< orphan*/  narg; struct msg** frag_seq; int /*<<< orphan*/  redis; int /*<<< orphan*/  request; int /*<<< orphan*/  owner; int /*<<< orphan*/  keys; int /*<<< orphan*/  mhdr; } ;
struct mbuf {char* pos; char* start; } ;
struct keypos {scalar_t__ start; scalar_t__ end; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CRLF ; 
 int /*<<< orphan*/  CRLF_LEN ; 
 scalar_t__ MSG_REQ_MC_GET ; 
 scalar_t__ MSG_REQ_MC_GETS ; 
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msg_tqh*,struct msg*,int /*<<< orphan*/ ) ; 
 struct keypos* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_tqe ; 
 int /*<<< orphan*/  FUNC5 (struct msg*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct msg*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct msg* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct msg*,int /*<<< orphan*/ *,int) ; 
 struct msg** FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct msg**) ; 
 struct msg** FUNC13 (int) ; 

__attribute__((used)) static rstatus_t
FUNC14(struct msg *r, uint32_t ncontinuum,
                            struct msg_tqh *frag_msgq,
                            uint32_t key_step)
{
    struct mbuf *mbuf;
    struct msg **sub_msgs;
    uint32_t i;
    rstatus_t status;

    sub_msgs = FUNC13(ncontinuum * sizeof(*sub_msgs));
    if (sub_msgs == NULL) {
        return NC_ENOMEM;
    }

    FUNC0(r->frag_seq == NULL);
    r->frag_seq = FUNC11(FUNC4(r->keys) * sizeof(*r->frag_seq));
    if (r->frag_seq == NULL) {
        FUNC12(sub_msgs);
        return NC_ENOMEM;
    }

    mbuf = FUNC1(&r->mhdr);
    mbuf->pos = mbuf->start;

    /*
     * This code is based on the assumption that 'gets ' is located
     * in a contiguous location.
     * This is always true because we have capped our MBUF_MIN_SIZE at 512 and
     * whenever we have multiple messages, we copy the tail message into a new mbuf
     */
    for (; *(mbuf->pos) != ' ';) {          /* eat get/gets  */
        mbuf->pos++;
    }
    mbuf->pos++;

    r->frag_id = FUNC8();
    r->nfrag = 0;
    r->frag_owner = r;

    for (i = 0; i < FUNC4(r->keys); i++) {        /* for each  key */
        struct msg *sub_msg;
        struct keypos *kpos = FUNC3(r->keys, i);
        uint32_t idx = FUNC7(r, kpos->start, kpos->end - kpos->start);

        if (sub_msgs[idx] == NULL) {
            sub_msgs[idx] = FUNC9(r->owner, r->request, r->redis);
            if (sub_msgs[idx] == NULL) {
                FUNC12(sub_msgs);
                return NC_ENOMEM;
            }
        }
        r->frag_seq[i] = sub_msg = sub_msgs[idx];

        sub_msg->narg++;
        status = FUNC5(sub_msg, kpos->start, kpos->end - kpos->start);
        if (status != NC_OK) {
            FUNC12(sub_msgs);
            return status;
        }
    }

    for (i = 0; i < ncontinuum; i++) {     /* prepend mget header, and forward it */
        struct msg *sub_msg = sub_msgs[i];
        if (sub_msg == NULL) {
            continue;
        }

        /* prepend get/gets */
        if (r->type == MSG_REQ_MC_GET) {
            status = FUNC10(sub_msg, (uint8_t *)"get ", 4);
        } else if (r->type == MSG_REQ_MC_GETS) {
            status = FUNC10(sub_msg, (uint8_t *)"gets ", 5);
        }
        if (status != NC_OK) {
            FUNC12(sub_msgs);
            return status;
        }

        /* append \r\n */
        status = FUNC6(sub_msg, (uint8_t *)CRLF, CRLF_LEN);
        if (status != NC_OK) {
            FUNC12(sub_msgs);
            return status;
        }

        sub_msg->type = r->type;
        sub_msg->frag_id = r->frag_id;
        sub_msg->frag_owner = r->frag_owner;

        FUNC2(frag_msgq, sub_msg, m_tqe);
        r->nfrag++;
    }

    FUNC12(sub_msgs);
    return NC_OK;
}