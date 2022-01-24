#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  program_result; int /*<<< orphan*/  seclabel_list; int /*<<< orphan*/  run_list; int /*<<< orphan*/  rtnl; int /*<<< orphan*/  dev_db_clone; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ UdevEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

UdevEvent *FUNC6(UdevEvent *event) {
        if (!event)
                return NULL;

        FUNC4(event->dev);
        FUNC4(event->dev_db_clone);
        FUNC5(event->rtnl);
        FUNC3(event->run_list);
        FUNC2(event->seclabel_list);
        FUNC0(event->program_result);
        FUNC0(event->name);

        return FUNC1(event);
}