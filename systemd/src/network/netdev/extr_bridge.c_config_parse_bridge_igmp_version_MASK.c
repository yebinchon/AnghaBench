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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ igmp_version; } ;
typedef  TYPE_1__ Bridge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC4 (char const*,scalar_t__*) ; 

int FUNC5(
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

        Bridge *b = userdata;
        uint8_t u;
        int r;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        if (FUNC2(rvalue)) {
                b->igmp_version = 0; /* 0 means unset. */
                return 0;
        }

        r = FUNC4(rvalue, &u);
        if (r < 0) {
                FUNC3(unit, LOG_ERR, filename, line, r,
                           "Failed to parse bridge's multicast IGMP version number '%s', ignoring assignment: %m",
                           rvalue);
                return 0;
        }
        if (!FUNC0(u, 2, 3)) {
                FUNC3(unit, LOG_ERR, filename, line, 0,
                           "Invalid bridge's multicast IGMP version number '%s', ignoring assignment.", rvalue);
                return 0;
        }

        b->igmp_version = u;

        return 0;
}