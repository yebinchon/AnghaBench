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
struct msg {int type; struct conn* owner; struct msg* peer; } ;
struct conn {int dummy; } ;
typedef  int /*<<< orphan*/  rstatus_t ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MSG_REQ_REDIS_AUTH ; 
#define  MSG_REQ_REDIS_PING 128 
 int /*<<< orphan*/  NC_ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msg*,struct msg*) ; 
 TYPE_2__ rsp_auth_required ; 
 TYPE_1__ rsp_pong ; 

rstatus_t
FUNC5(struct msg *r)
{
    struct conn *c_conn;
    struct msg *response = r->peer;

    FUNC0(response != NULL && response->owner != NULL);

    c_conn = response->owner;
    if (r->type == MSG_REQ_REDIS_AUTH) {
        return FUNC4(r, response);
    }

    if (!FUNC2(c_conn)) {
        return FUNC3(response, rsp_auth_required.data, rsp_auth_required.len);
    }

    switch (r->type) {
    case MSG_REQ_REDIS_PING:
        return FUNC3(response, rsp_pong.data, rsp_pong.len);

    default:
        FUNC1();
        return NC_ERROR;
    }
}