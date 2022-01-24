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
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_OFF ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(sd_event_source *s) {
        if (!s)
                return 0;

        return FUNC0(s, SD_EVENT_OFF);
}