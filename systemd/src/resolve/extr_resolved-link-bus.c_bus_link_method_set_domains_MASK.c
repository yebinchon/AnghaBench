#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  search_domains; TYPE_10__* manager; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_22__ {int route_only; } ;
struct TYPE_20__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ Link ;
typedef  TYPE_3__ DnsSearchDomain ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  DNS_SEARCH_DOMAIN_LINK ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_10__*,TYPE_3__**,int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC13 (TYPE_1__*,char,char*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,char*,char const**,int*) ; 
 int FUNC16 (TYPE_1__*,int) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC19(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r;

        FUNC0(message);
        FUNC0(l);

        r = FUNC18(l, error);
        if (r < 0)
                return r;

        r = FUNC13(message, 'a', "(sb)");
        if (r < 0)
                return r;

        for (;;) {
                const char *name;
                int route_only;

                r = FUNC15(message, "(sb)", &name, &route_only);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                r = FUNC3(name);
                if (r < 0)
                        return r;
                if (r == 0)
                        return FUNC12(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid search domain %s", name);
                if (!route_only && FUNC2(name))
                        return FUNC12(error, SD_BUS_ERROR_INVALID_ARGS, "Root domain is not suitable as search domain");
        }

        r = FUNC16(message, false);
        if (r < 0)
                return r;

        r = FUNC1(message, CAP_NET_ADMIN,
                                    "org.freedesktop.resolve1.set-domains",
                                    NULL, true, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Polkit will call us back */

        FUNC5(l->search_domains);

        for (;;) {
                DnsSearchDomain *d;
                const char *name;
                int route_only;

                r = FUNC15(message, "(sb)", &name, &route_only);
                if (r < 0)
                        goto clear;
                if (r == 0)
                        break;

                r = FUNC4(l->search_domains, name, &d);
                if (r < 0)
                        goto clear;

                if (r > 0)
                        FUNC6(d);
                else {
                        r = FUNC7(l->manager, &d, DNS_SEARCH_DOMAIN_LINK, l, name);
                        if (r < 0)
                                goto clear;
                }

                d->route_only = route_only;
        }

        r = FUNC14(message);
        if (r < 0)
                goto clear;

        FUNC9(l->search_domains);

        (void) FUNC10(l);
        (void) FUNC11(l->manager);

        return FUNC17(message, NULL);

clear:
        FUNC8(l->search_domains);
        return r;
}