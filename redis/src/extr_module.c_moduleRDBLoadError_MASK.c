#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int error; scalar_t__ bytes; TYPE_2__* type; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; TYPE_1__* module; } ;
struct TYPE_5__ {int options; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ RedisModuleIO ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int REDISMODULE_OPTIONS_HANDLE_IO_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 

void FUNC2(RedisModuleIO *io) {
    if (io->type->module->options & REDISMODULE_OPTIONS_HANDLE_IO_ERRORS) {
        io->error = 1;
        return;
    }
    FUNC1(LL_WARNING,
        "Error loading data from RDB (short read or EOF). "
        "Read performed by module '%s' about type '%s' "
        "after reading '%llu' bytes of a value.",
        io->type->module->name,
        io->type->name,
        (unsigned long long)io->bytes);
    FUNC0(1);
}