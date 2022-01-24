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
struct TYPE_6__ {scalar_t__ default_route; scalar_t__ unicast_scope; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int FUNC3(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Link *l = userdata;

        FUNC0(reply);
        FUNC0(l);

        /* Return what is configured, if there's something configured */
        if (l->default_route >= 0)
                return FUNC2(reply, "b", l->default_route);

        /* Otherwise report what is in effect */
        if (l->unicast_scope)
                return FUNC2(reply, "b", FUNC1(l->unicast_scope));

        return FUNC2(reply, "b", false);
}