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
struct watch {struct watch* next; } ;
typedef  enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;
typedef  enum watch_event { ____Placeholder_watch_event } watch_event ;

/* Variables and functions */
 int WATCH_NONE ; 
 int FUNC0 (struct watch*) ; 
 int FUNC1 (int,int,int) ; 
 struct watch* watches ; 

enum watch_trigger
FUNC2(enum watch_event event)
{
	enum watch_trigger trigger = WATCH_NONE;
	struct watch *watch;

	/* Collect triggers to check. Skkipping watches that are already
	 * marked dirty to avoid unnecessary checks. */
	for (watch = watches; watch; watch = watch->next)
		trigger |= FUNC0(watch);

	return FUNC1(event, trigger, WATCH_NONE);
}