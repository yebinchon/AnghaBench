#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_8__ {int /*<<< orphan*/  filters; } ;
typedef  int /*<<< orphan*/  RedisModuleCommandFilter ;
typedef  TYPE_2__ RedisModule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  moduleCommandFilters ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(RedisModule *module) {
    listIter li;
    listNode *ln;
    int count = 0;

    FUNC2(module->filters,&li);
    while((ln = FUNC1(&li))) {
        RedisModuleCommandFilter *filter = ln->value;
        listNode *ln = FUNC3(moduleCommandFilters,filter);
        if (ln) {
            FUNC0(moduleCommandFilters,ln);
            count++;
        }
        FUNC4(filter);
    }
    return count;
}