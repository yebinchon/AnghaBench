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
struct msg {int type; scalar_t__ ferror; scalar_t__ error; struct msg* frag_owner; scalar_t__ request; struct msg* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  MSG_REQ_REDIS_DEL 130 
#define  MSG_REQ_REDIS_MGET 129 
#define  MSG_REQ_REDIS_MSET 128 
 int /*<<< orphan*/  FUNC1 () ; 
 void FUNC2 (struct msg*) ; 
 void FUNC3 (struct msg*) ; 
 void FUNC4 (struct msg*) ; 

void
FUNC5(struct msg *r)
{
    struct msg *pr = r->peer; /* peer response */

    FUNC0(!pr->request);
    FUNC0(r->request && (r->frag_owner == r));
    if (r->error || r->ferror) {
        /* do nothing, if msg is in error */
        return;
    }

    switch (r->type) {
    case MSG_REQ_REDIS_MGET:
        return FUNC3(r);

    case MSG_REQ_REDIS_DEL:
        return FUNC2(r);

    case MSG_REQ_REDIS_MSET:
        return FUNC4(r);

    default:
        FUNC1();
    }
}