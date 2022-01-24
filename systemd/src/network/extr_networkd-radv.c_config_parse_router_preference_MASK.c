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
struct TYPE_2__ {int /*<<< orphan*/  router_preference; } ;
typedef  TYPE_1__ Network ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SD_NDISC_PREFERENCE_HIGH ; 
 int /*<<< orphan*/  SD_NDISC_PREFERENCE_LOW ; 
 int /*<<< orphan*/  SD_NDISC_PREFERENCE_MEDIUM ; 
 scalar_t__ FUNC0 (char const*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
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
        Network *network = userdata;

        FUNC1(filename);
        FUNC1(section);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        if (FUNC3(rvalue, "high"))
                network->router_preference = SD_NDISC_PREFERENCE_HIGH;
        else if (FUNC0(rvalue, "medium", "normal", "default"))
                network->router_preference = SD_NDISC_PREFERENCE_MEDIUM;
        else if (FUNC3(rvalue, "low"))
                network->router_preference = SD_NDISC_PREFERENCE_LOW;
        else
                FUNC2(unit, LOG_ERR, filename, line, -EINVAL, "Router preference '%s' is invalid, ignoring assignment: %m", rvalue);

        return 0;
}