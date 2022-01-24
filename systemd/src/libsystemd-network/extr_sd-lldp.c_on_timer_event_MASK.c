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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_lldp ;
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,char*) ; 

__attribute__((used)) static int FUNC3(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_lldp *lldp = userdata;
        int r;

        r = FUNC0(lldp, 0);
        if (r < 0)
                return FUNC2(r, "Failed to make space: %m");

        r = FUNC1(lldp, NULL);
        if (r < 0)
                return FUNC2(r, "Failed to restart timer: %m");

        return 0;
}