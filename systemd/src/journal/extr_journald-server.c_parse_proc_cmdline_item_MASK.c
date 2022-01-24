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
struct TYPE_3__ {int forward_to_syslog; int forward_to_kmsg; int forward_to_console; int forward_to_wall; int max_level_console; int max_level_store; int max_level_syslog; int max_level_kmsg; int max_level_wall; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(const char *key, const char *value, void *data) {
        Server *s = data;
        int r;

        FUNC0(s);

        if (FUNC4(key, "systemd.journald.forward_to_syslog")) {

                r = value ? FUNC3(value) : true;
                if (r < 0)
                        FUNC2("Failed to parse forward to syslog switch \"%s\". Ignoring.", value);
                else
                        s->forward_to_syslog = r;

        } else if (FUNC4(key, "systemd.journald.forward_to_kmsg")) {

                r = value ? FUNC3(value) : true;
                if (r < 0)
                        FUNC2("Failed to parse forward to kmsg switch \"%s\". Ignoring.", value);
                else
                        s->forward_to_kmsg = r;

        } else if (FUNC4(key, "systemd.journald.forward_to_console")) {

                r = value ? FUNC3(value) : true;
                if (r < 0)
                        FUNC2("Failed to parse forward to console switch \"%s\". Ignoring.", value);
                else
                        s->forward_to_console = r;

        } else if (FUNC4(key, "systemd.journald.forward_to_wall")) {

                r = value ? FUNC3(value) : true;
                if (r < 0)
                        FUNC2("Failed to parse forward to wall switch \"%s\". Ignoring.", value);
                else
                        s->forward_to_wall = r;

        } else if (FUNC4(key, "systemd.journald.max_level_console")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC1(value);
                if (r < 0)
                        FUNC2("Failed to parse max level console value \"%s\". Ignoring.", value);
                else
                        s->max_level_console = r;

        } else if (FUNC4(key, "systemd.journald.max_level_store")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC1(value);
                if (r < 0)
                        FUNC2("Failed to parse max level store value \"%s\". Ignoring.", value);
                else
                        s->max_level_store = r;

        } else if (FUNC4(key, "systemd.journald.max_level_syslog")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC1(value);
                if (r < 0)
                        FUNC2("Failed to parse max level syslog value \"%s\". Ignoring.", value);
                else
                        s->max_level_syslog = r;

        } else if (FUNC4(key, "systemd.journald.max_level_kmsg")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC1(value);
                if (r < 0)
                        FUNC2("Failed to parse max level kmsg value \"%s\". Ignoring.", value);
                else
                        s->max_level_kmsg = r;

        } else if (FUNC4(key, "systemd.journald.max_level_wall")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC1(value);
                if (r < 0)
                        FUNC2("Failed to parse max level wall value \"%s\". Ignoring.", value);
                else
                        s->max_level_wall = r;

        } else if (FUNC6(key, "systemd.journald"))
                FUNC2("Unknown journald kernel command line option \"%s\". Ignoring.", key);

        /* do not warn about state here, since probably systemd already did */
        return 0;
}