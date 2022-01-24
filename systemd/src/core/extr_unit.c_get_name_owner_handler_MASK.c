#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  get_name_owner_slot; } ;
typedef  TYPE_1__ sd_bus_message ;
struct TYPE_17__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_2__ sd_bus_error ;
typedef  TYPE_1__ Unit ;
struct TYPE_15__ {int /*<<< orphan*/  (* bus_name_owner_change ) (TYPE_1__*,int /*<<< orphan*/ *,char const*) ;} ;

/* Variables and functions */
 TYPE_13__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*,char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC11(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const sd_bus_error *e;
        const char *new_owner;
        Unit *u = userdata;
        int r;

        FUNC1(message);
        FUNC1(u);

        u->get_name_owner_slot = FUNC9(u->get_name_owner_slot);

        if (FUNC6(error)) {
                FUNC4("Failed to get name owner from bus: %s", error->message);
                return 0;
        }

        e = FUNC7(message);
        if (FUNC5(e, "org.freedesktop.DBus.Error.NameHasNoOwner"))
                return 0;

        if (e) {
                FUNC4("Unexpected error response from GetNameOwner: %s", e->message);
                return 0;
        }

        r = FUNC8(message, "s", &new_owner);
        if (r < 0) {
                FUNC2(r);
                return 0;
        }

        new_owner = FUNC3(new_owner);

        if (FUNC0(u)->bus_name_owner_change)
                FUNC0(u)->bus_name_owner_change(u, NULL, new_owner);

        return 0;
}