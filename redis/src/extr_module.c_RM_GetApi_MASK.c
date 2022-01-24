#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_2__ {int /*<<< orphan*/  moduleapi; } ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 

int FUNC2(const char *funcname, void **targetPtrPtr) {
    dictEntry *he = FUNC0(server.moduleapi, funcname);
    if (!he) return REDISMODULE_ERR;
    *targetPtrPtr = FUNC1(he);
    return REDISMODULE_OK;
}