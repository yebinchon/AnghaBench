#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* seat; int /*<<< orphan*/ * session_devices; } ;
struct TYPE_9__ {int /*<<< orphan*/  devices; } ;
typedef  int /*<<< orphan*/  SessionDevice ;
typedef  TYPE_1__ Seat ;
typedef  TYPE_2__ Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  devices ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(Device *d) {
        Seat *s;
        SessionDevice *sd;

        FUNC1(d);

        if (!d->seat)
                return;

        while ((sd = d->session_devices))
                FUNC5(sd);

        s = d->seat;
        FUNC0(devices, d->seat->devices, d);
        d->seat = NULL;

        if (!FUNC3(s)) {
                FUNC2(s);
                FUNC4(s, "CanGraphical", NULL);
        }
}