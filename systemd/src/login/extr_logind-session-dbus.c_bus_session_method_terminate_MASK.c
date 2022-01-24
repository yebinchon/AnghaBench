#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* manager; TYPE_1__* user; } ;
typedef  TYPE_3__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_11__ {int /*<<< orphan*/  polkit_registry; } ;
struct TYPE_10__ {int /*<<< orphan*/  uid; } ;
typedef  TYPE_3__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_KILL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int) ; 

int FUNC4(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;
        int r;

        FUNC0(message);
        FUNC0(s);

        r = FUNC1(
                        message,
                        CAP_KILL,
                        "org.freedesktop.login1.manage",
                        NULL,
                        false,
                        s->user->uid,
                        &s->manager->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Will call us back */

        r = FUNC3(s, true);
        if (r < 0)
                return r;

        return FUNC2(message, NULL);
}