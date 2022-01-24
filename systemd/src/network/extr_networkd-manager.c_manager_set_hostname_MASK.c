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
struct TYPE_4__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  dynamic_hostname; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,TYPE_1__*,char*,char const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_hostname_handler ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int FUNC7(Manager *m, const char *hostname) {
        int r;

        FUNC1("Setting transient hostname: '%s'", FUNC6(hostname));

        if (FUNC0(&m->dynamic_hostname, hostname) < 0)
                return FUNC3();

        if (!m->bus || FUNC5(m->bus) <= 0) {
                FUNC1("Not connected to system bus, setting hostname later.");
                return 0;
        }

        r = FUNC4(
                        m->bus,
                        NULL,
                        "org.freedesktop.hostname1",
                        "/org/freedesktop/hostname1",
                        "org.freedesktop.hostname1",
                        "SetHostname",
                        set_hostname_handler,
                        m,
                        "sb",
                        hostname,
                        false);

        if (r < 0)
                return FUNC2(r, "Could not set transient hostname: %m");

        return 0;
}