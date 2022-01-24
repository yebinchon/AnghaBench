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
 int /*<<< orphan*/  FUNC0 (char*,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_timer ; 

void FUNC3 ( void )
{
        double now = FUNC2 ( global_timer, NULL );
        FUNC0 ( "%4.6f (%2.6f): Stopped", now, 0.0 );
        FUNC1 ( global_timer );
}