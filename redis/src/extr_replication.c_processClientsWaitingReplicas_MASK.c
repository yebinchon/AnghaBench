#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_8__ {long long reploffset; int numreplicas; } ;
struct TYPE_10__ {TYPE_1__ bpop; } ;
typedef  TYPE_3__ client ;
struct TYPE_11__ {int /*<<< orphan*/  clients_waiting_acks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (long long) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void FUNC5(void) {
    long long last_offset = 0;
    int last_numreplicas = 0;

    listIter li;
    listNode *ln;

    FUNC2(server.clients_waiting_acks,&li);
    while((ln = FUNC1(&li))) {
        client *c = ln->value;

        /* Every time we find a client that is satisfied for a given
         * offset and number of replicas, we remember it so the next client
         * may be unblocked without calling replicationCountAcksByOffset()
         * if the requested offset / replicas were equal or less. */
        if (last_offset && last_offset > c->bpop.reploffset &&
                           last_numreplicas > c->bpop.numreplicas)
        {
            FUNC4(c);
            FUNC0(c,last_numreplicas);
        } else {
            int numreplicas = FUNC3(c->bpop.reploffset);

            if (numreplicas >= c->bpop.numreplicas) {
                last_offset = c->bpop.reploffset;
                last_numreplicas = numreplicas;
                FUNC4(c);
                FUNC0(c,numreplicas);
            }
        }
    }
}