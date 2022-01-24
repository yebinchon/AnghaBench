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
struct msg {int request; struct msg* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct msg*) ; 

void
FUNC5(struct msg *msg)
{
    struct msg *pmsg; /* peer message (response) */

    FUNC0(msg->request);

    FUNC3(msg);

    pmsg = msg->peer;
    if (pmsg != NULL) {
        FUNC0(!pmsg->request && pmsg->peer == msg);
        msg->peer = NULL;
        pmsg->peer = NULL;
        FUNC4(pmsg);
    }

    FUNC2(msg);

    FUNC1(msg);
}