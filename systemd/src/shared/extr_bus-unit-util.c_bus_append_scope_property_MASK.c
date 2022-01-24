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
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(sd_bus_message *m, const char *field, const char *eq) {
        if (FUNC1(field, "RuntimeMaxSec"))

                return FUNC0(m, field, eq);

        if (FUNC1(field, "TimeoutStopSec"))

                return FUNC0(m, field, eq);

        return 0;
}