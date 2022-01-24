#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ encoding; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  rio ;
typedef  int /*<<< orphan*/  quicklistIter ;
struct TYPE_9__ {int sz; int /*<<< orphan*/  longval; scalar_t__ value; } ;
typedef  TYPE_2__ quicklistEntry ;
typedef  int /*<<< orphan*/  quicklist ;

/* Variables and functions */
 int /*<<< orphan*/  AL_START_HEAD ; 
 long long AOF_REWRITE_ITEMS_PER_CMD ; 
 scalar_t__ OBJ_ENCODING_QUICKLIST ; 
 long long FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(rio *r, robj *key, robj *o) {
    long long count = 0, items = FUNC0(o);

    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        quicklist *list = o->ptr;
        quicklistIter *li = FUNC1(list, AL_START_HEAD);
        quicklistEntry entry;

        while (FUNC2(li,&entry)) {
            if (count == 0) {
                int cmd_items = (items > AOF_REWRITE_ITEMS_PER_CMD) ?
                    AOF_REWRITE_ITEMS_PER_CMD : items;
                if (FUNC4(r,'*',2+cmd_items) == 0) return 0;
                if (FUNC7(r,"RPUSH",5) == 0) return 0;
                if (FUNC6(r,key) == 0) return 0;
            }

            if (entry.value) {
                if (FUNC7(r,(char*)entry.value,entry.sz) == 0) return 0;
            } else {
                if (FUNC5(r,entry.longval) == 0) return 0;
            }
            if (++count == AOF_REWRITE_ITEMS_PER_CMD) count = 0;
            items--;
        }
        FUNC3(li);
    } else {
        FUNC8("Unknown list encoding");
    }
    return 1;
}