#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_12__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_16__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_15__ {int /*<<< orphan*/  cone; int /*<<< orphan*/  czero; } ;
struct TYPE_14__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_13__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_SET_COPY ; 
 int /*<<< orphan*/  NOTIFY_HASH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 

void FUNC7(client *c) {
    robj *o;
    if ((o = FUNC2(c,c->argv[1])) == NULL) return;
    FUNC4(o,c->argv,2,3);

    if (FUNC1(o, c->argv[2]->ptr)) {
        FUNC0(c, shared.czero);
    } else {
        FUNC3(o,c->argv[2]->ptr,c->argv[3]->ptr,HASH_SET_COPY);
        FUNC0(c, shared.cone);
        FUNC6(c->db,c->argv[1]);
        FUNC5(NOTIFY_HASH,"hset",c->argv[1],c->db->id);
        server.dirty++;
    }
}