#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_10__ {int /*<<< orphan*/  dirty; scalar_t__ cluster_enabled; } ;
struct TYPE_9__ {int /*<<< orphan*/  ok; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (long,long) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,long*,char*) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 

void FUNC4(client *c) {
    long id1, id2;

    /* Not allowed in cluster mode: we have just DB 0 there. */
    if (server.cluster_enabled) {
        FUNC1(c,"SWAPDB is not allowed in cluster mode");
        return;
    }

    /* Get the two DBs indexes. */
    if (FUNC3(c, c->argv[1], &id1,
        "invalid first DB index") != C_OK)
        return;

    if (FUNC3(c, c->argv[2], &id2,
        "invalid second DB index") != C_OK)
        return;

    /* Swap... */
    if (FUNC2(id1,id2) == C_ERR) {
        FUNC1(c,"DB index is out of range");
        return;
    } else {
        server.dirty++;
        FUNC0(c,shared.ok);
    }
}