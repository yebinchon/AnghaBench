#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ bus; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  dnssd_node_enumerator ; 
 int /*<<< orphan*/  dnssd_object_find ; 
 int /*<<< orphan*/  dnssd_vtable ; 
 int /*<<< orphan*/  link_node_enumerator ; 
 int /*<<< orphan*/  link_object_find ; 
 int /*<<< orphan*/  link_vtable ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  match_prepare_for_sleep ; 
 int /*<<< orphan*/  resolve_vtable ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC10(Manager *m) {
        int r;

        FUNC0(m);

        if (m->bus)
                return 0;

        r = FUNC1(&m->bus, "bus-api-resolve");
        if (r < 0)
                return FUNC2(r, "Failed to connect to system bus: %m");

        r = FUNC6(m->bus, NULL, "/org/freedesktop/resolve1", "org.freedesktop.resolve1.Manager", resolve_vtable, m);
        if (r < 0)
                return FUNC2(r, "Failed to register object: %m");

        r = FUNC4(m->bus, NULL, "/org/freedesktop/resolve1/link", "org.freedesktop.resolve1.Link", link_vtable, link_object_find, m);
        if (r < 0)
                return FUNC2(r, "Failed to register link objects: %m");

        r = FUNC5(m->bus, NULL, "/org/freedesktop/resolve1/link", link_node_enumerator, m);
        if (r < 0)
                return FUNC2(r, "Failed to register link enumerator: %m");

        r = FUNC4(m->bus, NULL, "/org/freedesktop/resolve1/dnssd", "org.freedesktop.resolve1.DnssdService", dnssd_vtable, dnssd_object_find, m);
        if (r < 0)
                return FUNC2(r, "Failed to register dnssd objects: %m");

        r = FUNC5(m->bus, NULL, "/org/freedesktop/resolve1/dnssd", dnssd_node_enumerator, m);
        if (r < 0)
                return FUNC2(r, "Failed to register dnssd enumerator: %m");

        r = FUNC9(m->bus, NULL, "org.freedesktop.resolve1", 0, NULL, NULL);
        if (r < 0)
                return FUNC2(r, "Failed to request name: %m");

        r = FUNC7(m->bus, m->event, 0);
        if (r < 0)
                return FUNC2(r, "Failed to attach bus to event loop: %m");

        r = FUNC8(
                        m->bus,
                        NULL,
                        "org.freedesktop.login1",
                        "/org/freedesktop/login1",
                        "org.freedesktop.login1.Manager",
                        "PrepareForSleep",
                        match_prepare_for_sleep,
                        NULL,
                        m);
        if (r < 0)
                FUNC3(r, "Failed to request match for PrepareForSleep, ignoring: %m");

        return 0;
}