#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ client ;
struct TYPE_15__ {int /*<<< orphan*/  wrongtypeerr; } ;

/* Variables and functions */
 scalar_t__ OBJ_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_6__ shared ; 

robj *FUNC4(client *c, robj *key) {
    robj *o = FUNC3(c->db,key);
    if (o == NULL) {
        o = FUNC1();
        FUNC2(c->db,key,o);
    } else {
        if (o->type != OBJ_STREAM) {
            FUNC0(c,shared.wrongtypeerr);
            return NULL;
        }
    }
    return o;
}