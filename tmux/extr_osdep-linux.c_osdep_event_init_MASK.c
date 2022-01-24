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
struct event_base {int dummy; } ;

/* Variables and functions */
 struct event_base* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct event_base *
FUNC3(void)
{
	struct event_base	*base;

	/* On Linux, epoll doesn't work on /dev/null (yes, really). */
	FUNC1("EVENT_NOEPOLL", "1", 1);

	base = FUNC0();
	FUNC2("EVENT_NOEPOLL");
	return (base);
}