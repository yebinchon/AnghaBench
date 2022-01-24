#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
struct TYPE_3__ {int /*<<< orphan*/  vc_keymap_toggle; int /*<<< orphan*/  vc_keymap; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Context *c = userdata;
        int r;

        r = FUNC2(c, reply);
        if (r < 0)
                return r;

        if (FUNC1(property, "VConsoleKeymap"))
                return FUNC0(reply, 's', c->vc_keymap);
        else if (FUNC1(property, "VConsoleKeymapToggle"))
                return FUNC0(reply, 's', c->vc_keymap_toggle);

        return -EINVAL;
}