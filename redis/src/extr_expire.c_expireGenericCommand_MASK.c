#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_15__ {TYPE_2__* db; int /*<<< orphan*/ ** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_18__ {int /*<<< orphan*/  dirty; scalar_t__ lazyfree_lazy_expire; int /*<<< orphan*/  masterhost; int /*<<< orphan*/  loading; } ;
struct TYPE_17__ {int /*<<< orphan*/  cone; int /*<<< orphan*/ * del; int /*<<< orphan*/ * unlink; int /*<<< orphan*/  czero; } ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int UNIT_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,long long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 long long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,long long) ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC11(client *c, long long basetime, int unit) {
    robj *key = c->argv[1], *param = c->argv[2];
    long long when; /* unix time in milliseconds when the key will expire. */

    if (FUNC3(c, param, &when, NULL) != C_OK)
        return;

    if (unit == UNIT_SECONDS) when *= 1000;
    when += basetime;

    /* No key, return zero. */
    if (FUNC4(c->db,key) == NULL) {
        FUNC0(c,shared.czero);
        return;
    }

    /* EXPIRE with negative TTL, or EXPIREAT with a timestamp into the past
     * should never be executed as a DEL when load the AOF or in the context
     * of a slave instance.
     *
     * Instead we take the other branch of the IF statement setting an expire
     * (possibly in the past) and wait for an explicit DEL from the master. */
    if (when <= FUNC5() && !server.loading && !server.masterhost) {
        robj *aux;

        int deleted = server.lazyfree_lazy_expire ? FUNC1(c->db,key) :
                                                    FUNC2(c->db,key);
        FUNC8(c,key,deleted);
        server.dirty++;

        /* Replicate/AOF this as an explicit DEL or UNLINK. */
        aux = server.lazyfree_lazy_expire ? shared.unlink : shared.del;
        FUNC7(c,2,aux,key);
        FUNC10(c->db,key);
        FUNC6(NOTIFY_GENERIC,"del",key,c->db->id);
        FUNC0(c, shared.cone);
        return;
    } else {
        FUNC9(c,c->db,key,when);
        FUNC0(c,shared.cone);
        FUNC10(c->db,key);
        FUNC6(NOTIFY_GENERIC,"expire",key,c->db->id);
        server.dirty++;
        return;
    }
}