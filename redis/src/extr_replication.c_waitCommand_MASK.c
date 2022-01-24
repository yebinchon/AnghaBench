#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mstime_t ;
struct TYPE_11__ {long long reploffset; long numreplicas; int /*<<< orphan*/  timeout; } ;
struct TYPE_12__ {long long woff; int flags; TYPE_1__ bpop; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_13__ {int /*<<< orphan*/  clients_waiting_acks; scalar_t__ masterhost; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKED_WAIT ; 
 int CLIENT_MULTI ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  UNIT_MILLISECONDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 long FUNC6 (long long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_4__ server ; 

void FUNC8(client *c) {
    mstime_t timeout;
    long numreplicas, ackreplicas;
    long long offset = c->woff;

    if (server.masterhost) {
        FUNC0(c,"WAIT cannot be used with replica instances. Please also note that since Redis 4.0 if a replica is configured to be writable (which is not the default) writes to replicas are just local and are not propagated.");
        return;
    }

    /* Argument parsing. */
    if (FUNC3(c,c->argv[1],&numreplicas,NULL) != C_OK)
        return;
    if (FUNC4(c,c->argv[2],&timeout,UNIT_MILLISECONDS)
        != C_OK) return;

    /* First try without blocking at all. */
    ackreplicas = FUNC6(c->woff);
    if (ackreplicas >= numreplicas || c->flags & CLIENT_MULTI) {
        FUNC1(c,ackreplicas);
        return;
    }

    /* Otherwise block the client and put it into our list of clients
     * waiting for ack from slaves. */
    c->bpop.timeout = timeout;
    c->bpop.reploffset = offset;
    c->bpop.numreplicas = numreplicas;
    FUNC5(server.clients_waiting_acks,c);
    FUNC2(c,BLOCKED_WAIT);

    /* Make sure that the server will send an ACK request to all the slaves
     * before returning to the event loop. */
    FUNC7();
}