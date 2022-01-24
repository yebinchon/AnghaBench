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
 int SYNC_STATE_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char const** sync_state_str ; 

const char *
FUNC1 (int state)
{
    if (state < 0 || state >= SYNC_STATE_NUM) {
        FUNC0 ("illegal sync state: %d\n", state); 
        return NULL;
    }

    return sync_state_str[state];
}