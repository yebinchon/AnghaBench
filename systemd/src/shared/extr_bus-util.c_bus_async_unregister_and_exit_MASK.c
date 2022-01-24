#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char const sd_event ;
typedef  char const sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  name_owner_change_callback ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*,char const**) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char const*,char*,char*,char const*,char*,char*) ; 

int FUNC5(sd_event *e, sd_bus *bus, const char *name) {
        const char *match;
        const char *unique;
        int r;

        FUNC0(e);
        FUNC0(bus);
        FUNC0(name);

        /* We unregister the name here and then wait for the
         * NameOwnerChanged signal for this event to arrive before we
         * quit. We do this in order to make sure that any queued
         * requests are still processed before we really exit. */

        r = FUNC2(bus, &unique);
        if (r < 0)
                return r;

        match = FUNC4(
                        "sender='org.freedesktop.DBus',"
                        "type='signal',"
                        "interface='org.freedesktop.DBus',"
                        "member='NameOwnerChanged',"
                        "path='/org/freedesktop/DBus',"
                        "arg0='", name, "',",
                        "arg1='", unique, "',",
                        "arg2=''");

        r = FUNC1(bus, NULL, match, name_owner_change_callback, NULL, e);
        if (r < 0)
                return r;

        r = FUNC3(bus, NULL, name, NULL, NULL);
        if (r < 0)
                return r;

        return 0;
}