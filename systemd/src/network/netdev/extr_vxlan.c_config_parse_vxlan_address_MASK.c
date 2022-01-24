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
struct TYPE_2__ {int group_family; int remote_family; int local_family; } ;
typedef  TYPE_1__ VxLan ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,int*,union in_addr_union*) ; 
 int FUNC2 (int,union in_addr_union*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,char const*) ; 
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
        VxLan *v = userdata;
        union in_addr_union *addr = data, buffer;
        int r, f;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        r = FUNC1(rvalue, &f, &buffer);
        if (r < 0) {
                FUNC3(unit, LOG_ERR, filename, line, r, "vxlan '%s' address is invalid, ignoring assignment: %s", lvalue, rvalue);
                return 0;
        }

        r = FUNC2(f, &buffer);

        if (FUNC4(lvalue, "Group")) {
                if (r <= 0) {
                        FUNC3(unit, LOG_ERR, filename, line, 0, "vxlan %s invalid multicast address, ignoring assignment: %s", lvalue, rvalue);
                        return 0;
                }

                v->group_family = f;
        } else {
                if (r > 0) {
                        FUNC3(unit, LOG_ERR, filename, line, 0, "vxlan %s cannot be a multicast address, ignoring assignment: %s", lvalue, rvalue);
                        return 0;
                }

                if (FUNC4(lvalue, "Remote"))
                        v->remote_family = f;
                else
                        v->local_family = f;
        }

        *addr = buffer;

        return 0;
}