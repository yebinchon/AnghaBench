#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_12__ {scalar_t__ result; } ;
typedef  scalar_t__ ServiceResult ;
typedef  TYPE_2__ Service ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(const char *func, Manager *m, Unit *unit, ServiceResult result_expected) {
        Service *service = NULL;

        FUNC2(m);
        FUNC2(unit);

        FUNC5(m, unit);

        service = FUNC0(unit);

        if (service->result != result_expected) {
                FUNC3("%s: %s: service end result %s, expected %s",
                          func, unit->id,
                          FUNC4(service->result),
                          FUNC4(result_expected));
                FUNC1();
        }
}