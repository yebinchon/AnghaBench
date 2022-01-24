#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* manager; TYPE_1__* user; } ;
typedef  TYPE_3__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  char const* int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  polkit_registry; } ;
struct TYPE_11__ {int /*<<< orphan*/  uid; } ;
typedef  TYPE_3__ Session ;
typedef  scalar_t__ KillWho ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_KILL ; 
 scalar_t__ KILL_ALL ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC6 (TYPE_3__*,char*,char const**,char const**) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,scalar_t__,char const*) ; 

int FUNC9(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;
        const char *swho;
        int32_t signo;
        KillWho who;
        int r;

        FUNC1(message);
        FUNC1(s);

        r = FUNC6(message, "si", &swho, &signo);
        if (r < 0)
                return r;

        if (FUNC3(swho))
                who = KILL_ALL;
        else {
                who = FUNC4(swho);
                if (who < 0)
                        return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid kill parameter '%s'", swho);
        }

        if (!FUNC0(signo))
                return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid signal %i", signo);

        r = FUNC2(
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

        r = FUNC8(s, who, signo);
        if (r < 0)
                return r;

        return FUNC7(message, NULL);
}