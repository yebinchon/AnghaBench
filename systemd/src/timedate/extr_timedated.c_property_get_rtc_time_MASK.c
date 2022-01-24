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
typedef  int usec_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int USEC_PER_SEC ; 
 int FUNC0 (struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (struct tm*) ; 

__attribute__((used)) static int FUNC6(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        struct tm tm = {};
        usec_t t = 0;
        int r;

        r = FUNC0(&tm);
        if (r == -EBUSY)
                FUNC2("/dev/rtc is busy. Is somebody keeping it open continuously? That's not a good idea... Returning a bogus RTC timestamp.");
        else if (r == -ENOENT)
                FUNC1("/dev/rtc not found.");
        else if (r < 0)
                return FUNC3(error, r, "Failed to read RTC: %m");
        else
                t = (usec_t) FUNC5(&tm) * USEC_PER_SEC;

        return FUNC4(reply, "t", t);
}