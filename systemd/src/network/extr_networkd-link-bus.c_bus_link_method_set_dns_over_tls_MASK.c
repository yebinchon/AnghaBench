#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ dns_over_tls_mode; TYPE_1__* manager; } ;
typedef  TYPE_2__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_11__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_2__ Link ;
typedef  scalar_t__ DnsOverTlsMode ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 scalar_t__ _DNS_OVER_TLS_MODE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC6 (TYPE_2__*,char*,char const**) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC9(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        const char *dns_over_tls;
        DnsOverTlsMode mode;
        int r;

        FUNC0(message);
        FUNC0(l);

        r = FUNC8(l, error);
        if (r < 0)
                return r;

        r = FUNC6(message, "s", &dns_over_tls);
        if (r < 0)
                return r;

        if (FUNC3(dns_over_tls))
                mode = _DNS_OVER_TLS_MODE_INVALID;
        else {
                mode = FUNC2(dns_over_tls);
                if (mode < 0)
                        return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid DNSOverTLS setting: %s", dns_over_tls);
        }

        r = FUNC1(message, CAP_NET_ADMIN,
                                    "org.freedesktop.network1.set-dns-over-tls",
                                    NULL, true, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Polkit will call us back */

        if (l->dns_over_tls_mode != mode) {
                l->dns_over_tls_mode = mode;
                (void) FUNC4(l);
        }

        return FUNC7(message, NULL);
}