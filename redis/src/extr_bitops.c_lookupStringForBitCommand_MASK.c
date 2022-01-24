#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_13__ {int /*<<< orphan*/ * argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ client ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_STRING ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 

robj *FUNC7(client *c, size_t maxbit) {
    size_t byte = maxbit >> 3;
    robj *o = FUNC4(c->db,c->argv[1]);

    if (o == NULL) {
        o = FUNC1(OBJ_STRING,FUNC6(NULL, byte+1));
        FUNC2(c->db,c->argv[1],o);
    } else {
        if (FUNC0(c,o,OBJ_STRING)) return NULL;
        o = FUNC3(c->db,c->argv[1],o);
        o->ptr = FUNC5(o->ptr,byte+1);
    }
    return o;
}