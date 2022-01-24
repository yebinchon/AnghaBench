#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_5__ {char* name; } ;
typedef  TYPE_2__ RedisModule ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

sds FUNC5(list *l) {
    listIter li;
    listNode *ln;
    FUNC1(l,&li);
    sds output = FUNC3("[");
    while((ln = FUNC0(&li))) {
        RedisModule *module = ln->value;
        output = FUNC2(output,module->name);
    }
    output = FUNC4(output,"|");
    output = FUNC2(output,"]");
    return output;
}