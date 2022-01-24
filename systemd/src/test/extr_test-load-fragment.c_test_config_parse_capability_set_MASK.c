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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,char*,int,char*,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void) {
        /* int config_parse_capability_set(
                 const char *unit,
                 const char *filename,
                 unsigned line,
                 const char *section,
                 unsigned section_line,
                 const char *lvalue,
                 int ltype,
                 const char *rvalue,
                 void *data,
                 void *userdata) */
        int r;
        uint64_t capability_bounding_set = 0;

        r = FUNC3(NULL, "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "CAP_NET_RAW",
                              &capability_bounding_set, NULL);
        FUNC1(r >= 0);
        FUNC1(capability_bounding_set == FUNC4(CAP_NET_RAW));

        r = FUNC3(NULL, "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "CAP_NET_ADMIN",
                              &capability_bounding_set, NULL);
        FUNC1(r >= 0);
        FUNC1(capability_bounding_set == (FUNC4(CAP_NET_RAW) | FUNC4(CAP_NET_ADMIN)));

        r = FUNC3(NULL, "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "~CAP_NET_ADMIN",
                              &capability_bounding_set, NULL);
        FUNC1(r >= 0);
        FUNC1(capability_bounding_set == FUNC4(CAP_NET_RAW));

        r = FUNC3(NULL, "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "",
                              &capability_bounding_set, NULL);
        FUNC1(r >= 0);
        FUNC1(capability_bounding_set == FUNC0(0));

        r = FUNC3(NULL, "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "~",
                              &capability_bounding_set, NULL);
        FUNC1(r >= 0);
        FUNC1(FUNC2(capability_bounding_set));

        capability_bounding_set = 0;
        r = FUNC3(NULL, "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "  'CAP_NET_RAW' WAT_CAP??? CAP_NET_ADMIN CAP'_trailing_garbage",
                              &capability_bounding_set, NULL);
        FUNC1(r >= 0);
        FUNC1(capability_bounding_set == (FUNC4(CAP_NET_RAW) | FUNC4(CAP_NET_ADMIN)));
}