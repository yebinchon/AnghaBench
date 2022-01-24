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
struct client {int resp; void* reply; int /*<<< orphan*/ * user; int /*<<< orphan*/ * peerid; void* watched_keys; scalar_t__ obuf_soft_limit_reached_time; scalar_t__ reply_bytes; int /*<<< orphan*/  replstate; int /*<<< orphan*/  btype; scalar_t__ flags; scalar_t__ bufpos; int /*<<< orphan*/ * argv; scalar_t__ argc; scalar_t__ querybuf_peak; int /*<<< orphan*/  querybuf; int /*<<< orphan*/ * name; int /*<<< orphan*/ * conn; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKED_NONE ; 
 int /*<<< orphan*/  CLIENT_ID_AOF ; 
 int /*<<< orphan*/  SLAVE_STATE_WAIT_BGSAVE_START ; 
 int /*<<< orphan*/  dupClientReplyValue ; 
 int /*<<< orphan*/  freeClientReplyValue ; 
 int /*<<< orphan*/  FUNC0 (struct client*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct client*,int /*<<< orphan*/ ) ; 
 struct client* FUNC6 (int) ; 

struct client *FUNC7(void) {
    struct client *c = FUNC6(sizeof(*c));

    FUNC5(c,0);
    c->id = CLIENT_ID_AOF; /* So modules can identify it's the AOF client. */
    c->conn = NULL;
    c->name = NULL;
    c->querybuf = FUNC4();
    c->querybuf_peak = 0;
    c->argc = 0;
    c->argv = NULL;
    c->bufpos = 0;
    c->flags = 0;
    c->btype = BLOCKED_NONE;
    /* We set the fake client as a slave waiting for the synchronization
     * so that Redis will not try to send replies to this client. */
    c->replstate = SLAVE_STATE_WAIT_BGSAVE_START;
    c->reply = FUNC1();
    c->reply_bytes = 0;
    c->obuf_soft_limit_reached_time = 0;
    c->watched_keys = FUNC1();
    c->peerid = NULL;
    c->resp = 2;
    c->user = NULL;
    FUNC3(c->reply,freeClientReplyValue);
    FUNC2(c->reply,dupClientReplyValue);
    FUNC0(c);
    return c;
}