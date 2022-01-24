#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sd_dhcp_raw_option {struct sd_dhcp_raw_option* data; } ;
struct TYPE_7__ {int /*<<< orphan*/  search_domains; struct sd_dhcp_raw_option* vendor_specific; struct sd_dhcp_raw_option* client_id; struct sd_dhcp_raw_option* static_route; struct sd_dhcp_raw_option* sip; struct sd_dhcp_raw_option* ntp; struct sd_dhcp_raw_option* dns; struct sd_dhcp_raw_option* domainname; struct sd_dhcp_raw_option* hostname; struct sd_dhcp_raw_option* timezone; struct sd_dhcp_raw_option* router; struct sd_dhcp_raw_option* root_path; struct sd_dhcp_raw_option* private_options; } ;
typedef  TYPE_1__ sd_dhcp_lease ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sd_dhcp_raw_option*,struct sd_dhcp_raw_option*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd_dhcp_raw_option*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_dhcp_lease *FUNC5(sd_dhcp_lease *lease) {
        FUNC1(lease);

        while (lease->private_options) {
                struct sd_dhcp_raw_option *option = lease->private_options;

                FUNC0(options, lease->private_options, option);

                FUNC2(option->data);
                FUNC2(option);
        }

        FUNC2(lease->root_path);
        FUNC2(lease->router);
        FUNC2(lease->timezone);
        FUNC2(lease->hostname);
        FUNC2(lease->domainname);
        FUNC2(lease->dns);
        FUNC2(lease->ntp);
        FUNC2(lease->sip);
        FUNC2(lease->static_route);
        FUNC2(lease->client_id);
        FUNC2(lease->vendor_specific);
        FUNC4(lease->search_domains);
        return FUNC3(lease);
}