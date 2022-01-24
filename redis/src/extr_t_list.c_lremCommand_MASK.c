#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  listTypeIterator ;
typedef  int /*<<< orphan*/  listTypeEntry ;
struct TYPE_11__ {TYPE_2__* db; int /*<<< orphan*/ ** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_14__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_13__ {int /*<<< orphan*/  czero; } ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  LIST_HEAD ; 
 int /*<<< orphan*/  LIST_TAIL ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 int /*<<< orphan*/  OBJ_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,long) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC13(client *c) {
    robj *subject, *obj;
    obj = c->argv[3];
    long toremove;
    long removed = 0;

    if ((FUNC3(c, c->argv[2], &toremove, NULL) != C_OK))
        return;

    subject = FUNC10(c,c->argv[1],shared.czero);
    if (subject == NULL || FUNC1(c,subject,OBJ_LIST)) return;

    listTypeIterator *li;
    if (toremove < 0) {
        toremove = -toremove;
        li = FUNC6(subject,-1,LIST_HEAD);
    } else {
        li = FUNC6(subject,0,LIST_TAIL);
    }

    listTypeEntry entry;
    while (FUNC8(li,&entry)) {
        if (FUNC5(&entry,obj)) {
            FUNC4(li, &entry);
            server.dirty++;
            removed++;
            if (toremove && removed == toremove) break;
        }
    }
    FUNC9(li);

    if (removed) {
        FUNC12(c->db,c->argv[1]);
        FUNC11(NOTIFY_LIST,"lrem",c->argv[1],c->db->id);
    }

    if (FUNC7(subject) == 0) {
        FUNC2(c->db,c->argv[1]);
        FUNC11(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);
    }

    FUNC0(c,removed);
}