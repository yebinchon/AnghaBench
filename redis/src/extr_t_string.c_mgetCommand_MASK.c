#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_10__ {int argc; int /*<<< orphan*/ * argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ client ;

/* Variables and functions */
 scalar_t__ OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(client *c) {
    int j;

    FUNC0(c,c->argc-1);
    for (j = 1; j < c->argc; j++) {
        robj *o = FUNC3(c->db,c->argv[j]);
        if (o == NULL) {
            FUNC2(c);
        } else {
            if (o->type != OBJ_STRING) {
                FUNC2(c);
            } else {
                FUNC1(c,o);
            }
        }
    }
}