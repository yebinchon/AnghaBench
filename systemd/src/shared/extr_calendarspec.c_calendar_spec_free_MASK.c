#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  timezone; int /*<<< orphan*/  microsecond; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; int /*<<< orphan*/  year; } ;
typedef  TYPE_1__ CalendarSpec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

CalendarSpec* FUNC3(CalendarSpec *c) {

        if (!c)
                return NULL;

        FUNC0(c->year);
        FUNC0(c->month);
        FUNC0(c->day);
        FUNC0(c->hour);
        FUNC0(c->minute);
        FUNC0(c->microsecond);
        FUNC1(c->timezone);

        return FUNC2(c);
}