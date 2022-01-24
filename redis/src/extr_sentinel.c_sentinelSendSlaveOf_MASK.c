#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* link; } ;
typedef  TYPE_2__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  portstr ;
struct TYPE_6__ {int /*<<< orphan*/  pending_commands; int /*<<< orphan*/  cc; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  sentinelDiscardReplyCallback ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 

int FUNC4(sentinelRedisInstance *ri, char *host, int port) {
    char portstr[32];
    int retval;

    FUNC0(portstr,sizeof(portstr),port);

    /* If host is NULL we send SLAVEOF NO ONE that will turn the instance
     * into a master. */
    if (host == NULL) {
        host = "NO";
        FUNC1(portstr,"ONE",4);
    }

    /* In order to send SLAVEOF in a safe way, we send a transaction performing
     * the following tasks:
     * 1) Reconfigure the instance according to the specified host/port params.
     * 2) Rewrite the configuration.
     * 3) Disconnect all clients (but this one sending the commnad) in order
     *    to trigger the ask-master-on-reconnection protocol for connected
     *    clients.
     *
     * Note that we don't check the replies returned by commands, since we
     * will observe instead the effects in the next INFO output. */
    retval = FUNC2(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s",
        FUNC3(ri,"MULTI"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    retval = FUNC2(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s %s %s",
        FUNC3(ri,"SLAVEOF"),
        host, portstr);
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    retval = FUNC2(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s REWRITE",
        FUNC3(ri,"CONFIG"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    /* CLIENT KILL TYPE <type> is only supported starting from Redis 2.8.12,
     * however sending it to an instance not understanding this command is not
     * an issue because CLIENT is variadic command, so Redis will not
     * recognized as a syntax error, and the transaction will not fail (but
     * only the unsupported command will fail). */
    retval = FUNC2(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s KILL TYPE normal",
        FUNC3(ri,"CLIENT"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    retval = FUNC2(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s",
        FUNC3(ri,"EXEC"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    return C_OK;
}