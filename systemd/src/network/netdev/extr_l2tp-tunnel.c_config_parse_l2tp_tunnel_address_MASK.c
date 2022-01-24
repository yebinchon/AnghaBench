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
typedef  union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_2__ {scalar_t__ family; scalar_t__ local_address_type; int /*<<< orphan*/  local; int /*<<< orphan*/  remote; } ;
typedef  TYPE_1__ L2tpTunnel ;
typedef  scalar_t__ L2tpLocalAddressType ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  IN_ADDR_NULL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ NETDEV_L2TP_LOCAL_ADDRESS_AUTO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (scalar_t__,char const*,union in_addr_union*) ; 
 int FUNC2 (char const*,scalar_t__*,union in_addr_union*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

int FUNC8(
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

        L2tpTunnel *t = userdata;
        union in_addr_union *addr = data;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC7(lvalue, "Local")) {
                L2tpLocalAddressType addr_type;

                if (FUNC4(rvalue))
                        addr_type = NETDEV_L2TP_LOCAL_ADDRESS_AUTO;
                else
                        addr_type = FUNC5(rvalue);

                if (addr_type >= 0) {
                        if (FUNC3(t->family, &t->remote) != 0)
                                /* If Remote= is not specified yet, then also clear family. */
                                t->family = AF_UNSPEC;

                        t->local = IN_ADDR_NULL;
                        t->local_address_type = addr_type;

                        return 0;
                }
        }

        if (t->family == AF_UNSPEC)
                r = FUNC2(rvalue, &t->family, addr);
        else
                r = FUNC1(t->family, rvalue, addr);
        if (r < 0) {
                FUNC6(unit, LOG_ERR, filename, line, r,
                           "Invalid L2TP Tunnel address specified in %s='%s', ignoring assignment: %m", lvalue, rvalue);
                return 0;
        }

        return 0;
}