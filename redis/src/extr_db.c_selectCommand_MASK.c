#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_11__ {scalar_t__ cluster_enabled; } ;
struct TYPE_10__ {int /*<<< orphan*/  ok; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,long*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,long) ; 
 TYPE_3__ server ; 
 TYPE_2__ shared ; 

void FUNC4(client *c) {
    long id;

    if (FUNC2(c, c->argv[1], &id,
        "invalid DB index") != C_OK)
        return;

    if (server.cluster_enabled && id != 0) {
        FUNC1(c,"SELECT is not allowed in cluster mode");
        return;
    }
    if (FUNC3(c,id) == C_ERR) {
        FUNC1(c,"DB index is out of range");
    } else {
        FUNC0(c,shared.ok);
    }
}