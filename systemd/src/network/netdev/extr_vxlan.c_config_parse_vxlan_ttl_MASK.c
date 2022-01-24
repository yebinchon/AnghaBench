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
struct TYPE_2__ {int inherit; unsigned int ttl; } ;
typedef  TYPE_1__ VxLan ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC2 (char const*,unsigned int*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

int FUNC4(const char *unit,
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
        unsigned f;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC3(rvalue, "inherit"))
                v->inherit = true;
        else {
                r = FUNC2(rvalue, &f);
                if (r < 0) {
                        FUNC1(unit, LOG_ERR, filename, line, r,
                                   "Failed to parse VXLAN TTL '%s', ignoring assignment: %m", rvalue);
                        return 0;
                }

                if (f > 255) {
                        FUNC1(unit, LOG_ERR, filename, line, 0,
                                   "Invalid VXLAN TTL '%s'. TTL must be <= 255. Ignoring assignment.", rvalue);
                        return 0;
                }

                v->ttl = f;
        }

        return 0;
}