#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int connections_per_uid_max; } ;
typedef  TYPE_1__ VarlinkServer ;

/* Variables and functions */
 unsigned int VARLINK_DEFAULT_CONNECTIONS_PER_UID_MAX ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 

unsigned FUNC1(VarlinkServer *s) {
        unsigned m;

        if (s)
                return s->connections_per_uid_max;

        /* Make sure to never use up more than ¾th of available connections for a single user */
        m = FUNC0(NULL);
        if (VARLINK_DEFAULT_CONNECTIONS_PER_UID_MAX > m)
                return m / 4 * 3;

        return VARLINK_DEFAULT_CONNECTIONS_PER_UID_MAX;
}