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
typedef  scalar_t__ uint64_t ;
struct msg {scalar_t__ frag_id; scalar_t__ err; struct msg* peer; scalar_t__ request; struct conn* owner; } ;
struct context {int dummy; } ;
struct conn {int /*<<< orphan*/  redis; int /*<<< orphan*/  (* dequeue_outq ) (struct context*,struct conn*,struct msg*) ;int /*<<< orphan*/  proxy; scalar_t__ client; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct msg* FUNC1 (struct msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_tqe ; 
 struct msg* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct conn*,struct msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct context*,struct conn*,struct msg*) ; 

__attribute__((used)) static struct msg *
FUNC7(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct msg *pmsg;        /* peer message (response) */
    struct msg *cmsg, *nmsg; /* current and next message (request) */
    uint64_t id;
    err_t err;

    FUNC0(conn->client && !conn->proxy);
    FUNC0(msg->request && FUNC3(conn, msg));
    FUNC0(msg->owner == conn);

    id = msg->frag_id;
    if (id != 0) {
        for (err = 0, cmsg = FUNC1(msg, c_tqe);
             cmsg != NULL && cmsg->frag_id == id;
             cmsg = nmsg) {
            nmsg = FUNC1(cmsg, c_tqe);

            /* dequeue request (error fragment) from client outq */
            conn->dequeue_outq(ctx, conn, cmsg);
            if (err == 0 && cmsg->err != 0) {
                err = cmsg->err;
            }

            FUNC4(cmsg);
        }
    } else {
        err = msg->err;
    }

    pmsg = msg->peer;
    if (pmsg != NULL) {
        FUNC0(!pmsg->request && pmsg->peer == msg);
        msg->peer = NULL;
        pmsg->peer = NULL;
        FUNC5(pmsg);
    }

    return FUNC2(conn->redis, err);
}