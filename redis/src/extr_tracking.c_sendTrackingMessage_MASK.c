#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_8__ {long long client_tracking_redirection; int resp; int flags; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int CLIENT_PUBSUB ; 
 int /*<<< orphan*/  TrackingChannelName ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,long long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (long long) ; 

void FUNC7(client *c, long long hash) {
    int using_redirection = 0;
    if (c->client_tracking_redirection) {
        client *redir = FUNC6(c->client_tracking_redirection);
        if (!redir) {
            /* We need to signal to the original connection that we
             * are unable to send invalidation messages to the redirected
             * connection, because the client no longer exist. */
            if (c->resp > 2) {
                FUNC3(c,3);
                FUNC0(c,"tracking-redir-broken",21);
                FUNC1(c,c->client_tracking_redirection);
            }
            return;
        }
        c = redir;
        using_redirection = 1;
    }

    /* Only send such info for clients in RESP version 3 or more. However
     * if redirection is active, and the connection we redirect to is
     * in Pub/Sub mode, we can support the feature with RESP 2 as well,
     * by sending Pub/Sub messages in the __redis__:invalidate channel. */
    if (c->resp > 2) {
        FUNC3(c,2);
        FUNC0(c,"invalidate",10);
        FUNC1(c,hash);
    } else if (using_redirection && c->flags & CLIENT_PUBSUB) {
        robj *msg = FUNC4(hash);
        FUNC2(c,TrackingChannelName,msg);
        FUNC5(msg);
    }
}