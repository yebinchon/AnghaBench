#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RedisModule {int options; int /*<<< orphan*/  types; } ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int REDISMODULE_OPTIONS_HANDLE_IO_ERRORS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 struct RedisModule* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modules ; 

int FUNC5() {
    dictIterator *di = FUNC0(modules);
    dictEntry *de;

    while ((de = FUNC2(di)) != NULL) {
        struct RedisModule *module = FUNC1(de);
        if (FUNC4(module->types) &&
            !(module->options & REDISMODULE_OPTIONS_HANDLE_IO_ERRORS))
        {
            FUNC3(di);
            return 0;
        }
    }
    FUNC3(di);
    return 1;
}