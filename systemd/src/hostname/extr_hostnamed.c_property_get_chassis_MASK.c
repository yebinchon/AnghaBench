#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
struct TYPE_2__ {char** data; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 size_t PROP_CHASSIS ; 
 char* FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int FUNC3(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Context *c = userdata;
        const char *name;

        if (FUNC1(c->data[PROP_CHASSIS]))
                name = FUNC0();
        else
                name = c->data[PROP_CHASSIS];

        return FUNC2(reply, "s", name);
}