#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  utc; } ;
typedef  TYPE_1__ CalendarSpec ;

/* Variables and functions */
 int EINVAL ; 
 int USEC_PER_SEC ; 
 int USEC_TIMESTAMP_FORMATTABLE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const*,struct tm*,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,struct tm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const CalendarSpec *spec, usec_t usec, usec_t *ret_next) {
        struct tm tm;
        time_t t;
        int r;
        usec_t tm_usec;

        FUNC0(spec);

        if (usec > USEC_TIMESTAMP_FORMATTABLE_MAX)
                return -EINVAL;

        usec++;
        t = (time_t) (usec / USEC_PER_SEC);
        FUNC1(FUNC3(&t, &tm, spec->utc));
        tm_usec = usec % USEC_PER_SEC;

        r = FUNC2(spec, &tm, &tm_usec);
        if (r < 0)
                return r;

        t = FUNC4(&tm, spec->utc);
        if (t < 0)
                return -EINVAL;

        if (ret_next)
                *ret_next = (usec_t) t * USEC_PER_SEC + tm_usec;

        return 0;
}