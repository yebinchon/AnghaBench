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
struct TYPE_2__ {int family; int /*<<< orphan*/  remote; int /*<<< orphan*/  local; } ;
typedef  TYPE_1__ Tunnel ;

/* Variables and functions */
 int AF_UNSPEC ; 
 union in_addr_union IN_ADDR_NULL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,int*,union in_addr_union*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(const char *unit,
                                const char *filename,
                                unsigned line,
                                const char *section,
                                unsigned section_line,
                                const char *lvalue,
                                int ltype,
                                const char *rvalue,
                                void *data,
                                void *userdata) {
        Tunnel *t = userdata;
        union in_addr_union *addr = data, buffer;
        int r, f;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        /* This is used to parse addresses on both local and remote ends of the tunnel.
         * Address families must match.
         *
         * "any" is a special value which means that the address is unspecified.
         */

        if (FUNC4(rvalue, "any")) {
                *addr = IN_ADDR_NULL;

                /* As a special case, if both the local and remote addresses are
                 * unspecified, also clear the address family.
                 */
                if (t->family != AF_UNSPEC &&
                    FUNC2(t->family, &t->local) != 0 &&
                    FUNC2(t->family, &t->remote) != 0)
                        t->family = AF_UNSPEC;
                return 0;
        }

        r = FUNC1(rvalue, &f, &buffer);
        if (r < 0) {
                FUNC3(unit, LOG_ERR, filename, line, r,
                           "Tunnel address \"%s\" invalid, ignoring assignment: %m", rvalue);
                return 0;
        }

        if (t->family != AF_UNSPEC && t->family != f) {
                FUNC3(unit, LOG_ERR, filename, line, 0,
                           "Tunnel addresses incompatible, ignoring assignment: %s", rvalue);
                return 0;
        }

        t->family = f;
        *addr = buffer;
        return 0;
}