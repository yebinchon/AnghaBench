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
union in_addr_union {int /*<<< orphan*/  in6; } ;
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ sixrd_prefixlen; int /*<<< orphan*/  sixrd_prefix; } ;
typedef  TYPE_1__ Tunnel ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,union in_addr_union*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 

int FUNC3(const char* unit,
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

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);

        union in_addr_union p;
        uint8_t l;
        int r;

        r = FUNC1(rvalue, AF_INET6, &p, &l);
        if (r < 0) {
                FUNC2(unit, LOG_ERR, filename, line, r, "Failed to parse 6rd prefix \"%s\", ignoring: %m", rvalue);
                return 0;
        }
        if (l == 0) {
                FUNC2(unit, LOG_ERR, filename, line, 0, "6rd prefix length of \"%s\" must be greater than zero, ignoring", rvalue);
                return 0;
        }

        t->sixrd_prefix = p.in6;
        t->sixrd_prefixlen = l;

        return 0;
}