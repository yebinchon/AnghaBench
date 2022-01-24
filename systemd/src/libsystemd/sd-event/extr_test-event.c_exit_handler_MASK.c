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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int got_exit ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(sd_event_source *s, void *userdata) {
        FUNC1("got quit handler on %c", FUNC0(userdata));

        got_exit = true;

        return 3;
}