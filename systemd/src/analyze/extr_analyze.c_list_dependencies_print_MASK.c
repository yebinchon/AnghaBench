#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ts2 ;
typedef  int /*<<< orphan*/  ts ;
struct unit_times {scalar_t__ time; scalar_t__ activating; scalar_t__ activated; } ;
struct boot_times {scalar_t__ userspace_time; } ;

/* Variables and functions */
 int FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_BRANCH ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_RIGHT ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_SPACE ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_VERTICAL ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
                const char *name,
                unsigned level,
                unsigned branches,
                bool last,
                struct unit_times *times,
                struct boot_times *boot) {

        unsigned i;
        char ts[FORMAT_TIMESPAN_MAX], ts2[FORMAT_TIMESPAN_MAX];

        for (i = level; i != 0; i--)
                FUNC3("%s", FUNC4(branches & (1 << (i-1)) ? SPECIAL_GLYPH_TREE_VERTICAL : SPECIAL_GLYPH_TREE_SPACE));

        FUNC3("%s", FUNC4(last ? SPECIAL_GLYPH_TREE_RIGHT : SPECIAL_GLYPH_TREE_BRANCH));

        if (times) {
                if (times->time > 0)
                        FUNC3("%s%s @%s +%s%s", FUNC0(), name,
                               FUNC2(ts, sizeof(ts), times->activating - boot->userspace_time, USEC_PER_MSEC),
                               FUNC2(ts2, sizeof(ts2), times->time, USEC_PER_MSEC), FUNC1());
                else if (times->activated > boot->userspace_time)
                        FUNC3("%s @%s", name, FUNC2(ts, sizeof(ts), times->activated - boot->userspace_time, USEC_PER_MSEC));
                else
                        FUNC3("%s", name);
        } else
                FUNC3("%s", name);
        FUNC3("\n");

        return 0;
}