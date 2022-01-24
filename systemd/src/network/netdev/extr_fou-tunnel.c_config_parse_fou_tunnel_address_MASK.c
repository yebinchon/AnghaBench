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
struct TYPE_2__ {int local_family; int peer_family; } ;
typedef  TYPE_1__ FouTunnel ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,int*,union in_addr_union*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

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

        union in_addr_union *addr = data;
        FouTunnel *t = userdata;
        int r, *f;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC3(lvalue, "Local"))
                f = &t->local_family;
        else
                f = &t->peer_family;

        r = FUNC1(rvalue, f, addr);
        if (r < 0)
                FUNC2(unit, LOG_ERR, filename, line, r,
                           "Foo over UDP tunnel '%s' address is invalid, ignoring assignment: %s",
                           lvalue, rvalue);

        return 0;
}