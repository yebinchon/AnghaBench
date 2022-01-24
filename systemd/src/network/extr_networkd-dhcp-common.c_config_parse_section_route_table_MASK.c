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
typedef  void* uint32_t ;
struct TYPE_2__ {int dhcp_route_table_set; int ipv6_accept_ra_route_table_set; void* ipv6_accept_ra_route_table; void* dhcp_route_table; } ;
typedef  TYPE_1__ Network ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC3 (char const*,void**) ; 

int FUNC4(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Network *network = data;
        uint32_t rt;
        int r;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        r = FUNC3(rvalue, &rt);
        if (r < 0) {
                FUNC2(unit, LOG_ERR, filename, line, r,
                           "Failed to parse RouteTable=%s, ignoring assignment: %m", rvalue);
                return 0;
        }

        if (FUNC0(section, "DHCP", "DHCPv4")) {
                network->dhcp_route_table = rt;
                network->dhcp_route_table_set = true;
        } else { /* section is IPv6AcceptRA */
                network->ipv6_accept_ra_route_table = rt;
                network->ipv6_accept_ra_route_table_set = true;
        }

        return 0;
}