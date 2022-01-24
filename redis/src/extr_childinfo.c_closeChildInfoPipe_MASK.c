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
struct TYPE_2__ {int* child_info_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ server ; 

void FUNC1(void) {
    if (server.child_info_pipe[0] != -1 ||
        server.child_info_pipe[1] != -1)
    {
        FUNC0(server.child_info_pipe[0]);
        FUNC0(server.child_info_pipe[1]);
        server.child_info_pipe[0] = -1;
        server.child_info_pipe[1] = -1;
    }
}