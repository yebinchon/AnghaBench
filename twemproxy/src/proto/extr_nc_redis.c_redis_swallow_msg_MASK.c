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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct server_pool {TYPE_1__ name; int /*<<< orphan*/  redis_db; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct server {TYPE_2__ name; struct server_pool* owner; } ;
struct msg {scalar_t__ type; int /*<<< orphan*/  mhdr; } ;
struct mbuf {int /*<<< orphan*/ * start; } ;
struct conn {scalar_t__ owner; } ;
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,int) ; 
 scalar_t__ MSG_REQ_REDIS_SELECT ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  mbuf ; 
 scalar_t__ FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  next ; 
 scalar_t__ FUNC5 (struct msg*) ; 

void
FUNC6(struct conn *conn, struct msg *pmsg, struct msg *msg)
{
    if (pmsg != NULL && pmsg->type == MSG_REQ_REDIS_SELECT &&
        msg != NULL && FUNC5(msg)) {
        struct server* conn_server;
        struct server_pool* conn_pool;
        struct mbuf* rsp_buffer;
        uint8_t message[128];
        size_t copy_len;

        /*
         * Get a substring from the message so that the initial - and the trailing
         * \r\n is removed.
         */
        conn_server = (struct server*)conn->owner;
        conn_pool = conn_server->owner;
        rsp_buffer = FUNC1(&msg->mhdr, mbuf, next);
        copy_len = FUNC0(FUNC3(rsp_buffer) - 3, sizeof(message) - 1);

        FUNC4(message, &rsp_buffer->start[1], copy_len);
        message[copy_len] = 0;

        FUNC2("SELECT %d failed on %s | %s: %s",
                 conn_pool->redis_db, conn_pool->name.data,
                 conn_server->name.data, message);
    }
}