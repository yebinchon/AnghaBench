#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  mstime_t ;
struct TYPE_15__ {int flags; int /*<<< orphan*/ * argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ client ;
struct TYPE_16__ {int /*<<< orphan*/  wrongtypeerr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKED_LIST ; 
 int CLIENT_MULTI ; 
 scalar_t__ C_OK ; 
 scalar_t__ OBJ_LIST ; 
 int /*<<< orphan*/  UNIT_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int) ; 
 TYPE_3__ shared ; 

void FUNC8(client *c) {
    mstime_t timeout;

    if (FUNC3(c,c->argv[3],&timeout,UNIT_SECONDS)
        != C_OK) return;

    robj *key = FUNC5(c->db, c->argv[1]);

    if (key == NULL) {
        if (c->flags & CLIENT_MULTI) {
            /* Blocking against an empty list in a multi state
             * returns immediately. */
            FUNC1(c);
        } else {
            /* The list is empty and the client blocks. */
            FUNC2(c,BLOCKED_LIST,c->argv + 1,1,timeout,c->argv[2],NULL);
        }
    } else {
        if (key->type != OBJ_LIST) {
            FUNC0(c, shared.wrongtypeerr);
        } else {
            /* The list exists and has elements, so
             * the regular rpoplpushCommand is executed. */
            FUNC7(c,key,FUNC4(key) > 0);
            FUNC6(c);
        }
    }
}