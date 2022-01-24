#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; int id_set_strict; int /*<<< orphan*/  gid; int /*<<< orphan*/  gid_set; int /*<<< orphan*/  todo_group; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
#define  ADD_GROUP 129 
#define  ADD_USER 128 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  groups ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Item *i) {
        int r;

        FUNC2(i);

        switch (i->type) {

        case ADD_USER: {
                Item *j;

                j = FUNC4(groups, i->name);
                if (j && j->todo_group) {
                        /* When the group with the same name is already in queue,
                         * use the information about the group and do not create
                         * duplicated group entry. */
                        i->gid_set = j->gid_set;
                        i->gid = j->gid;
                        i->id_set_strict = true;
                } else {
                        r = FUNC0(i);
                        if (r < 0)
                                return r;
                }

                return FUNC1(i);
        }

        case ADD_GROUP:
                return FUNC0(i);

        default:
                FUNC3("Unknown item type");
        }
}