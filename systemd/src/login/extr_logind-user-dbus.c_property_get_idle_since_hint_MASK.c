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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
struct TYPE_4__ {int /*<<< orphan*/  monotonic; int /*<<< orphan*/  realtime; } ;
typedef  TYPE_1__ dual_timestamp ;
typedef  int /*<<< orphan*/  User ;

/* Variables and functions */
 TYPE_1__ DUAL_TIMESTAMP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        User *u = userdata;
        dual_timestamp t = DUAL_TIMESTAMP_NULL;
        uint64_t k;

        FUNC0(bus);
        FUNC0(reply);
        FUNC0(u);

        (void) FUNC3(u, &t);
        k = FUNC2(property, "IdleSinceHint") ? t.realtime : t.monotonic;

        return FUNC1(reply, "t", k);
}