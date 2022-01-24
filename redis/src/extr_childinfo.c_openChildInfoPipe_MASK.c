#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  child_info_data; int /*<<< orphan*/ * child_info_pipe; } ;

/* Variables and functions */
 scalar_t__ ANET_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 

void FUNC4(void) {
    if (FUNC3(server.child_info_pipe) == -1) {
        /* On error our two file descriptors should be still set to -1,
         * but we call anyway cloesChildInfoPipe() since can't hurt. */
        FUNC1();
    } else if (FUNC0(NULL,server.child_info_pipe[0]) != ANET_OK) {
        FUNC1();
    } else {
        FUNC2(&server.child_info_data,0,sizeof(server.child_info_data));
    }
}