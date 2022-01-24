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
typedef  int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; int /*<<< orphan*/  tm_mday; } ;

/* Variables and functions */
 int FUNC0 (struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct tm*) ; 
 int FUNC2 () ; 

time_t
FUNC3(time_t when)
{
    time_t     now, next;
    struct tm  tm;

    now = FUNC2();

    FUNC1(now, &tm);

    tm.tm_hour = (int) (when / 3600);
    when %= 3600;
    tm.tm_min = (int) (when / 60);
    tm.tm_sec = (int) (when % 60);

    next = FUNC0(&tm);

    if (next == -1) {
        return -1;
    }

    if (next - now > 0) {
        return next;
    }

    tm.tm_mday++;

    /* mktime() should normalize a date (Jan 32, etc) */

    next = FUNC0(&tm);

    if (next != -1) {
        return next;
    }

    return -1;
}