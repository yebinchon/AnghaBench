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
typedef  int /*<<< orphan*/  UnitStatusInfo ;
struct TYPE_4__ {int /*<<< orphan*/ * units; int /*<<< orphan*/  slot_job_removed; int /*<<< orphan*/  cache; int /*<<< orphan*/  polkit_registry; int /*<<< orphan*/  zone; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  units ; 

__attribute__((used)) static void FUNC7(Context *c) {
        UnitStatusInfo *p;

        FUNC1(c);

        FUNC3(c->zone);
        FUNC2(c->polkit_registry);
        FUNC4(c->cache);

        FUNC5(c->slot_job_removed);

        while ((p = c->units)) {
                FUNC0(units, c->units, p);
                FUNC6(p);
        }
}