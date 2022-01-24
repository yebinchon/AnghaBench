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
struct TYPE_5__ {TYPE_3__* module; } ;
struct TYPE_6__ {int /*<<< orphan*/  defined; TYPE_1__ details; } ;
typedef  TYPE_2__ type_t ;
typedef  int /*<<< orphan*/  statement_list_t ;
struct TYPE_7__ {int /*<<< orphan*/ * stmts; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int) ; 

void FUNC2(type_t *module, statement_list_t *stmts)
{
    if (module->details.module) FUNC0("multiple definition error\n");
    module->details.module = FUNC1(sizeof(*module->details.module));
    module->details.module->stmts = stmts;
    module->defined = TRUE;
}