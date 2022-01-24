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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_8__ {size_t resp; TYPE_4__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * null; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_HASH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ shared ; 

void FUNC3(client *c) {
    robj *o;

    if ((o = FUNC2(c,c->argv[1],shared.null[c->resp])) == NULL ||
        FUNC1(c,o,OBJ_HASH)) return;

    FUNC0(c, o, c->argv[2]->ptr);
}