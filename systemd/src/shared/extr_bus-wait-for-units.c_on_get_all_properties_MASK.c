#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
struct TYPE_12__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ sd_bus_error ;
struct TYPE_13__ {int /*<<< orphan*/  userdata; int /*<<< orphan*/  bus_path; int /*<<< orphan*/  (* unit_callback ) (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;TYPE_3__* parent; } ;
typedef  TYPE_2__ WaitForItem ;
struct TYPE_14__ {int has_failed; TYPE_2__* current; } ;
typedef  TYPE_3__ BusWaitForUnits ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        WaitForItem *item = userdata;
        int r;

        FUNC0(item);

        if (FUNC4(error)) {
                BusWaitForUnits *d = item->parent;

                d->has_failed = true;

                FUNC2(FUNC3(error), "GetAll() failed for %s: %s",
                                item->bus_path, error->message);

                d->current = item;
                item->unit_callback(d, item->bus_path, false, item->userdata);
                FUNC6(item);

                FUNC1(d);
                return 0;
        }

        r = FUNC7(item, m);
        if (r < 0)
                FUNC2(r, "Failed to process GetAll method reply: %m");

        return 0;
}