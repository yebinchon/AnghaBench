#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RedisModule {int /*<<< orphan*/  types; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rio ;
struct TYPE_5__ {int aux_save_triggers; int /*<<< orphan*/  aux_save; } ;
typedef  TYPE_1__ moduleType ;
struct TYPE_6__ {TYPE_1__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 struct RedisModule* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modules ; 
 int FUNC6 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

ssize_t FUNC7(rio *rdb, int when) {
    size_t total_written = 0;
    dictIterator *di = FUNC0(modules);
    dictEntry *de;

    while ((de = FUNC2(di)) != NULL) {
        struct RedisModule *module = FUNC1(de);
        listIter li;
        listNode *ln;

        FUNC5(module->types,&li);
        while((ln = FUNC4(&li))) {
            moduleType *mt = ln->value;
            if (!mt->aux_save || !(mt->aux_save_triggers & when))
                continue;
            ssize_t ret = FUNC6(rdb, when, mt);
            if (ret==-1) {
                FUNC3(di);
                return -1;
            }
            total_written += ret;
        }
    }

    FUNC3(di);
    return total_written;
}