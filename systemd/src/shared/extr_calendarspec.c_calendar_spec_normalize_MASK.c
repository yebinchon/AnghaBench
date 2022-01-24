#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int utc; int weekdays_bits; int end_of_month; int /*<<< orphan*/  microsecond; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; int /*<<< orphan*/  year; int /*<<< orphan*/  timezone; } ;
typedef  TYPE_1__ CalendarSpec ;

/* Variables and functions */
 int BITS_WEEKDAYS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(CalendarSpec *c) {
        FUNC0(c);

        if (FUNC4(c->timezone, "UTC")) {
                c->utc = true;
                c->timezone = FUNC2(c->timezone);
        }

        if (c->weekdays_bits <= 0 || c->weekdays_bits >= BITS_WEEKDAYS)
                c->weekdays_bits = -1;

        if (c->end_of_month && !c->day)
                c->end_of_month = false;

        FUNC1(c->year);

        FUNC3(&c->year);
        FUNC3(&c->month);
        FUNC3(&c->day);
        FUNC3(&c->hour);
        FUNC3(&c->minute);
        FUNC3(&c->microsecond);

        return 0;
}