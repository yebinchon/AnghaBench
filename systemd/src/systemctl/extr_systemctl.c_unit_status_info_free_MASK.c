#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * exec; int /*<<< orphan*/ * conditions; int /*<<< orphan*/  listen; int /*<<< orphan*/  triggers; int /*<<< orphan*/  triggered_by; int /*<<< orphan*/  dropin_paths; int /*<<< orphan*/  documentation; } ;
typedef  TYPE_1__ UnitStatusInfo ;
typedef  int /*<<< orphan*/  UnitCondition ;
typedef  int /*<<< orphan*/  ExecStatusInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conditions ; 
 int /*<<< orphan*/  exec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(UnitStatusInfo *info) {
        ExecStatusInfo *p;
        UnitCondition *c;

        FUNC2(info->documentation);
        FUNC2(info->dropin_paths);
        FUNC2(info->triggered_by);
        FUNC2(info->triggers);
        FUNC2(info->listen);

        while ((c = info->conditions)) {
                FUNC0(conditions, info->conditions, c);
                FUNC3(c);
        }

        while ((p = info->exec)) {
                FUNC0(exec, info->exec, p);
                FUNC1(p);
        }
}