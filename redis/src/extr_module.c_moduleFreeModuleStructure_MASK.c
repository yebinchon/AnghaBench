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
struct RedisModule {int /*<<< orphan*/  name; int /*<<< orphan*/  using; int /*<<< orphan*/  usedby; int /*<<< orphan*/  filters; int /*<<< orphan*/  types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct RedisModule*) ; 

void FUNC3(struct RedisModule *module) {
    FUNC0(module->types);
    FUNC0(module->filters);
    FUNC0(module->usedby);
    FUNC0(module->using);
    FUNC1(module->name);
    FUNC2(module);
}