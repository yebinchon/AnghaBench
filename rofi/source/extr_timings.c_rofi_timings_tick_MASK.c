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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,double,double,char const*,char const*,int,char const*) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_timer ; 
 double global_timer_last ; 

void FUNC2 ( const char *file, char const *str, int line, char const *msg )
{
    double now = FUNC1 ( global_timer, NULL );

    FUNC0 ( "%4.6f (%2.6f): %s:%s:%-3d %s", now, now - global_timer_last, file, str, line, msg );
    global_timer_last = now;
}