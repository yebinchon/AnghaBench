#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct msg {TYPE_2__* owner; TYPE_1__** frag_seq; int /*<<< orphan*/  keys; scalar_t__ ferror; scalar_t__ error; struct msg* frag_owner; scalar_t__ request; struct msg* peer; } ;
typedef  scalar_t__ rstatus_t ;
struct TYPE_4__ {int err; } ;
struct TYPE_3__ {struct msg* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NC_OK ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct msg*,struct msg*) ; 
 scalar_t__ FUNC3 (struct msg*,int /*<<< orphan*/ *,int) ; 

void
FUNC4(struct msg *request)
{
    struct msg *response = request->peer;
    struct msg *sub_msg;
    uint32_t i;
    rstatus_t status;

    FUNC0(!response->request);
    FUNC0(request->request && (request->frag_owner == request));
    if (request->error || request->ferror) {
        response->owner->err = 1;
        return;
    }

    for (i = 0; i < FUNC1(request->keys); i++) {      /* for each  key */
        sub_msg = request->frag_seq[i]->peer;           /* get it's peer response */
        if (sub_msg == NULL) {
            response->owner->err = 1;
            return;
        }
        status = FUNC2(response, sub_msg);
        if (status != NC_OK) {
            response->owner->err = 1;
            return;
        }
    }

    /* append END\r\n */
    status = FUNC3(response, (uint8_t *)"END\r\n", 5);
    if (status != NC_OK) {
        response->owner->err = 1;
        return;
    }
}