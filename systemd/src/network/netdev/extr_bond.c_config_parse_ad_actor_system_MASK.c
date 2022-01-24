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
struct ether_addr {int* ether_addr_octet; } ;
struct TYPE_2__ {struct ether_addr ad_actor_system; } ;
typedef  TYPE_1__ Bond ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,struct ether_addr*) ; 
 scalar_t__ FUNC2 (struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 

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
        Bond *b = userdata;
        struct ether_addr n;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        r = FUNC1(rvalue, &n);
        if (r < 0) {
                FUNC3(unit, LOG_ERR, filename, line, r,
                           "Not a valid MAC address %s. Ignoring assignment: %m",
                           rvalue);
                return 0;
        }
        if (FUNC2(&n) || (n.ether_addr_octet[0] & 0x01)) {
                FUNC3(unit, LOG_ERR, filename, line, 0,
                           "Not a valid MAC address %s, can not be null or multicast. Ignoring assignment.",
                           rvalue);
                return 0;
        }

        b->ad_actor_system = n;

        return 0;
}