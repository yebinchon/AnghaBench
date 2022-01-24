#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_9__ {int argc; TYPE_2__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_12__ {int dirty; } ;
struct TYPE_11__ {int /*<<< orphan*/  czero; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int LIST_HEAD ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 int /*<<< orphan*/  OBJ_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC7(client *c, int where) {
    int j, pushed = 0;
    robj *subject;

    if ((subject = FUNC4(c,c->argv[1],shared.czero)) == NULL ||
        FUNC1(c,subject,OBJ_LIST)) return;

    for (j = 2; j < c->argc; j++) {
        FUNC3(subject,c->argv[j],where);
        pushed++;
    }

    FUNC0(c,FUNC2(subject));

    if (pushed) {
        char *event = (where == LIST_HEAD) ? "lpush" : "rpush";
        FUNC6(c->db,c->argv[1]);
        FUNC5(NOTIFY_LIST,event,c->argv[1],c->db->id);
    }
    server.dirty += pushed;
}