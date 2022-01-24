#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  userdata; int /*<<< orphan*/  (* ready_callback ) (TYPE_1__*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ BusWaitForUnits ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        BusWaitForUnits *d = userdata;

        FUNC0(m);
        FUNC0(d);

        FUNC2("Warning! D-Bus connection terminated.");

        FUNC1(d);

        if (d->ready_callback)
                d->ready_callback(d, false, d->userdata);
        else /* If no ready callback is specified close the connection so that the event loop exits */
                FUNC3(FUNC4(m));

        return 0;
}