#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_7__ {int /*<<< orphan*/ * module; } ;
typedef  TYPE_2__ RedisModuleEventListener ;
typedef  int /*<<< orphan*/  RedisModule ;

/* Variables and functions */
 int /*<<< orphan*/  RedisModule_EventListeners ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(RedisModule *module) {
    RedisModuleEventListener *el;
    listIter li;
    listNode *ln;
    FUNC2(RedisModule_EventListeners,&li);

    while((ln = FUNC1(&li))) {
        el = ln->value;
        if (el->module == module) {
            FUNC0(RedisModule_EventListeners,ln);
            FUNC3(el);
        }
    }
}