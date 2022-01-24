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
struct RedisModule {int options; } ;
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int REDISMODULE_OPTIONS_HANDLE_IO_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

sds FUNC3(struct RedisModule *module) {
    sds output = FUNC1("[");
    if (module->options & REDISMODULE_OPTIONS_HANDLE_IO_ERRORS)
        output = FUNC0(output,"handle-io-errors|");
    output = FUNC2(output,"|");
    output = FUNC0(output,"]");
    return output;
}