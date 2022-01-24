#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  app_name; struct TYPE_4__* link_source_name; struct TYPE_4__* link_type_name; struct TYPE_4__* source_name; struct TYPE_4__* type_name; } ;
typedef  TYPE_1__ ps_struct_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(ps_struct_t *ps_struct)
{
    FUNC2(FUNC1(), 0, ps_struct->type_name);
    FUNC2(FUNC1(), 0, ps_struct->source_name);
    FUNC2(FUNC1(), 0, ps_struct->link_type_name);
    FUNC2(FUNC1(), 0, ps_struct->link_source_name);
    FUNC0(ps_struct->app_name);
    FUNC2(FUNC1(), 0, ps_struct);
}